class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to @post
  end

  def show
    @post = Post.find_by_id(post_id)
  end

  def edit
    @post = Post.find_by_id(post_id)
  end

  def update
    post = Post.find_by_id(post_id)
    post.update_attributes(post_params)
    redirect_to posts_path(post)
  end

private
  def post_params
    params.require(:post).permit(:title, :content, :city_id)
  end

  def post_id
    params[:id]
  end

end
