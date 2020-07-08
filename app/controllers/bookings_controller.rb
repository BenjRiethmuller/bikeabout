class BookingsController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    @booking.user = current_user
    @booking.status = "Pending"
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to bike_path(@bike)
    end
  end

  # MAY NEED AN EDIT ACTION

  def update
    set_booking
    @booking.update(booking_params)
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :total_price)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
