class SessionsController < ApplicationController

  def new
    render :new, layout: false
  end

  def create
    @user = User.find_by(email: params[:user][:email]).try(:authenticate, params[:user][:password])
    respond_to do |format|
      if @user
        set_session
        format.html { redirect_to @user }
      else
        flash[:error] = "Try logging in again."
        format.html { redirect_to root_path }
      end
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end
end