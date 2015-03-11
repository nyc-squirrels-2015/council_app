class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_login, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      set_session
      redirect_to user_path(@user)
    else
      usual_error = find_in_errors(@user, "can't be blank")
      flash[:error] = usual_error ? 'Field cannot be left blank.' : 'The user account could not be created.'
      redirect_to root_path
    end
  end

  def show
    council_ids = current_user.council_memberships.pluck(:council_id)

    @questions =  Question.for_user_and_councils(current_user.id, council_ids)

  end

  def edit
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes user_params
      redirect_to user_path(@user)
    else
      usual_error = find_in_errors(@user, "can't be blank")
      flash[:error] = usual_error ? 'Field cannot be left blank.' : 'The user information could not be updated.'
      render :edit
    end
  end

  def destroy
    session.clear if @user == current_user
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password)
  end


end