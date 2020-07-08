class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]

  def index
    @bikes = Bike.geocoded

    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude
      }
    end
  end

  def show
    @bike = Bike.find(params[:id])
    @booking = Booking.new
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    @bike.save
  end

  def edit
  end

  def update
    @bike.update(bike_params)
  end

  def destroy
    @bike.destroy
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :category, :address, :price)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
