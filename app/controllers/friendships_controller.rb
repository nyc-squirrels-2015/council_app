def new
  @user = current_user
  @friendship = Friendship.new
end

def index
  @friendships = Friendship.where(user_id: current_user.id)
end

def create
   @friendship = Friendship.create(user_id: current_user.id, friend_id: find_friend_id(params[:email])
   redirect "/"
end

def delete
  Friendship(current_user.id, params[:friend_id]).destroy
  redirect "/"
end

def show
  @friendship = Friendship.find(current_user.id, params[:friend_id])
end

private
  
def friendship_params
  params.require(:friendship).permit(:email).merge(user_id: current_user.id)
end

def find_friend_id(email)
  friend_id = User.find_by(email: email)
  friend_id.id
end