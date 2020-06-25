class BookingsController < ApplicationController


  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    @booking.user = current_user
    @booking.status = "Pending"
    @booking.save
  end

  # MAY NEED AN EDIT ACTION

  def update
    set_booking
    @booking.update(booking_params)
    @booking.save
  end

  def destroy
    set_booking
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :total_price)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
