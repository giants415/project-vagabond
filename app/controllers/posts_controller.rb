class PostsController < ApplicationController

  def index
    @posts = Post.where(city_id: params[:city_id]).find_each
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def show
    @post = Post.find_by_id(post_id)
    @city = City.find_by_id(post_id)
  end

  def edit
    @post = Post.find_by_id(post_id)
  end

  def update
    @post = Post.find_by_id(post_id)
    @city = City.find_by_id(post_id)

    @post.update_attributes(post_params)
    redirect_to post_path(@city, @post)
  end

  def destroy
    @post = Post.find_by_id(post_id)
    @post.destroy
    redirect_to posts_path
  end

private
  def post_params
    post_info = params.require(:post).permit(:title, :content)
    post_params = post_info.merge({city_id: params[:city_id], user_id: current_user.id})
  end

  def post_id
    params[:id]
  end

end
