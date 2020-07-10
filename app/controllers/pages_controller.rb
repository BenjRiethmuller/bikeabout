class PagesController < ApplicationController
  def home
    @bikes = Bike.all
  end

  def dashboard
    @bikes = Bike.where(user_id: current_user)
    @bookings = Booking.where(user_id: current_user)
    # @booked_bikes = Bike.where(user_id: current_user) && Bike.where(:status == "Pending")
    @upcoming_bookings = Booking.where('start_date >= ?', Date.today)
    @past_bookings = Booking.where('end_date <= ?', Date.today)
  end
end
