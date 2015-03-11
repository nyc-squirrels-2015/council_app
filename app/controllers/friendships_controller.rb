class FriendshipsController < ApplicationController

  def index
    @friendships = Friendship.where(user_id: current_user.id)
  end

  def create
     @friendship = Friendship.new(user_id: current_user.id, friend_id: find_friend_id(params[:email]))
     if @friendship.save
      if request.xhr?
        # send_notification(@friendship.user.firstname, "Invite for friendship")
        @invite = Friendship.where(friend_id: current_user.id).where(status: false)
        render :json => {:friendship => @friendship, :invite => @invite.as_json(include: :user)}
      else
       redirect_to friendship_path(@friendship)
      end
    end

  end

  def new
    @user = current_user
    @friendship = Friendship.new
    @invites = Friendship.where(friend_id: current_user.id).where(status: false)
  end

  def show
    @friendship = Friendship.find(params[:id])
  end


  def destroy
    Friendship.find(params[:id]).destroy
    redirect_to friendships_path
  end

  def invite
    @invites =Friendship.where(friend_id: current_user.id).where(status: false)

  end

  def confirm
    @friend = Friendship.find(params[:id])
    @friend.status = true
    if @friend.save
      redirect_to invite_path
    else
      usual_error = find_in_errors(@friend, "can't be blank")
      flash[:error] = usual_error ? 'Field cannot be left blank.' : 'The friend could not be added.'
      redirect_to friendship_path
    end

  end

  private

  def friendship_params
    params.require(:friendship).permit(:id)
  end

  def find_friend_id(email)
    friend_id = User.find_by(email: email)
    friend_id.id
  end

end