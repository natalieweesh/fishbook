class GangsController < ApplicationController
  before_filter :check_login

  def show
    @gang = Gang.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @gang = Gang.find(params[:id])
  end

  def update
    @gang = Gang.find(params[:id])
    @gang.member_ids = params[:gang_membership][:user_ids]
    if @gang.save
      redirect_to @gang
    else
      render :new
    end
  end

end
