class ApplicationController < ActionController::Base
  protect_from_forgery

  def login
    token = SecureRandom.urlsafe_base64
    @user.update_attribute(:token, token)
    session[:token] = token
  end


  def check_login
    @user = User.find_by_token(session[:token])
    unless @user && session[:token]
      flash[:error] = "you must log in"
      redirect_to new_session_url
    end
  end

  def logged_in?
    @user = User.find_by_token(session[:token])
    @user && session[:token] ? true : false
  end

end
