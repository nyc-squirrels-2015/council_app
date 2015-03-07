class FriendshipsController < ApplicationController

  def new
    @user = current_user
    @friendship = Friendship.new
  end

  def index
    @friendships = Friendship.where(user_id: current_user.id)
  end

  def create
     params[:friendships] = "Hello"
     # params[:friendships][:user_id] = current_user.id
     # params[:friendships][:friend_id] = find_friend_id(params[:email])
     p "*" * 50
     p params
     @friendship = Friendship.new(user_id: current_user.id, friend_id: find_friend_id(params[:email]))
     puts "I'M OVER HERE!! #{@friendship.inspect} "
     
  end

  def delete
    Friendship(current_user.id, params[:friend_id]).destroy
    redirect_to root_path
  end

  def show
    @friendship = Friendship.find(current_user.id, params[:friend_id])
  end

  private
    
  def friendship_params
    params.require(:friendship).permit!
  end

  def find_friend_id(email)
    friend_id = User.find_by(email: email)
    friend_id.id
  end

end