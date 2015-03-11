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
      flash[:error] = 'Field cannot be left blank.'
      redirect_to root_path
    end
  end

  def show
    council_ids = " ( #{current_user.council_memberships.pluck(:council_id).join(',')} )"
    query = "SELECT * from questions 
               WHERE questions.user_id = #{current_user.id} 
               OR questions.council_id in #{council_ids} order by created_at DESC"
    @questions = Question.find_by_sql(query)

  end

  def edit
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes user_params
      redirect_to user_path(@user)
    else
      flash[:error] = 'Field cannot be left blank.'
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