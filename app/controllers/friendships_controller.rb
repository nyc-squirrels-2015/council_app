class FriendshipsController < ApplicationController

  def index
    @friendships = Friendship.where(user_id: current_user.id)
  end

  def create

     @friendship = Friendship.create(user_id: current_user.id, friend_id: find_friend_id(params[:email]))
     redirect_to friendship_path(@friendship)
  end

  def new
    @user = current_user
    @friendship = Friendship.new
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


  private

  def friendship_params
    params.require(:friendship).permit(:id)
  end

  def find_friend_id(email)
    friend_id = User.find_by(email: email)
    friend_id.id
  end

end