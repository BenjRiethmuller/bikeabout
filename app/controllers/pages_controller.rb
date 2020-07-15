class PagesController < ApplicationController
  def home
    @bikes = Bike.all
  end

  def dashboard
    # ALL MY BIKES
    @bikes = Bike.where(user_id: current_user)

    # ALL MY BIKES WITH BOOKINGS
    @booked_bikes = Bike.where(user_id: current_user).select do |bike|
      bike.bookings.present?
    end

    # MY UPCOMING BOOKINGS OF OTHER PEOPLES BIKES
    @upcoming_bikes = current_user.bookings.includes(:bike).where('start_date >= ?', Date.today)

    # MY PAST BOOKINGS OF OTHER PEOPLES BIKES
    @past_bikes = current_user.bookings.includes(:bike).where('end_date <= ?', Date.today)
  end
end
