class PostsController < ApplicationController

  def index
    @posts = Posts.all
  end

  def show
    @post = Post.find_by_id(params[:id])
  end
  
end
