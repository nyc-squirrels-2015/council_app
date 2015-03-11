class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  #USER AUTH

  def current_user
     User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def is_authenticated?
     !!current_user
  end

  def require_login
    redirect_to root_url unless is_authenticated?
  end

  def set_session
    if @user
      session[:user_id] = @user.id
      # require_login
    end
  end


  def send_notification(option, content)
    client = Rushover::Client.new(ENV["RUSHOVER_CLIENT"])
    resp = client.notify(ENV["RUSHOVER_USER"], "#{option[0,20]}...", :priority => 1, :title => content)
  end

end

