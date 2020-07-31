class ReviewsController < ApplicationController

  def new
    @bike = Bike.find(params[:bike_id])
    @review = Review.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @review = Review.new(review_params)
    @review.bike = @bike
    @review.user = current_user
    if @review.save
      redirect_to bike_path(@bike), notice: 'Your review has been created!'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
