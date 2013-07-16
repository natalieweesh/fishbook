class UsersController < ApplicationController

  before_filter :check_login, :except => [:create, :new]

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      login
      redirect_to @user
    else
      render :new
    end
  end

  def update
    user = User.find(params[:id])
    user.update_attributes(params[:user])
    redirect_to user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to new_user_url
  end
end
