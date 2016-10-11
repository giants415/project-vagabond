class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.create(city_params)
    redirect_to cities_path
  end

  def show
    @city = City.find_by_id(city_id)
    @posts = Post.where(city_id: city_id)
  end

  private

  def city_params
    params.require(:city).permit(:city_name, :city_state, :city_image)
  end

  def city_id
    params[:id]
  end
end
