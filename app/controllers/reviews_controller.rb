class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @review = Review.new(review_params)
    @review.bike = @bike
    @review.user = current_user
    @review.save
  end
end
