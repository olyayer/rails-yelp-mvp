class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [ :show, :edit, :update ]


  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant) # same as @restaurant
    else
      render :new
    end
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant #same as restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def edit
    # @restaurant from before_action
  end

  private

  def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category, :review)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end








