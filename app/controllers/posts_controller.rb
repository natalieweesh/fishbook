class PostsController < ApplicationController

  before_filter :check_login

  def edit
    @post = Post.find(params[:id])
    (3 - @post.links.count).times do
      @post.links.build
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(:title => params[:post][:title], :body => params[:post][:body])
    @post.gang_ids = params[:gang_post][:post_ids]

    @post.links_attributes = params[:post][:links_attributes].values
    if @post.save
      redirect_to edit_post_url(@post.id)
    else
      render :text => :fail
    end

  end

end