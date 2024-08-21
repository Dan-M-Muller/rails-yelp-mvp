class RestaurantsController < ApplicationController
  before_action :set_rest, only: %i[show]
  def index
    @restaurants = Restaurant.all;
  end

  def show

  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(rest_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def rest_params
    params.require(:restaurant).permit(:name,:address, :category, :phone_number)
  end

  def set_rest
    @restaurant = Restaurant.find(params[:id]);
  end
end
