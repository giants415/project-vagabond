class UsersController < ApplicationController
  before_action :logged_in?

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user
      login(@user)
      redirect_to root_path
    else
      redirect_to new_session_path
    end
  end

  def show
    @user = User.find_by_id(user_id)
    @posts = Post.where(user_id: user_id)
  end

  def edit
    @user = User.find_by_id(user_id)
  end

  def update
    user = User.find_by_id(user_id)
    user.update_attributes(user_params)
    redirect_to user_path(user)
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :city)
  end

  def user_id
    params[:id]
  end
end
