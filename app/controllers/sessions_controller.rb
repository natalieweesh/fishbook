class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_username(params[:user][:username])

    login if @user.authenticate(params[:user][:password])

    redirect_to (logged_in? ? user_url(@user.id) : new_session_url)
  end

  def destroy
    reset_session
    redirect_to new_session_url
  end

end
