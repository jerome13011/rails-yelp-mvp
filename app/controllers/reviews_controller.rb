class ReviewsController < ApplicationController

  before_action :find_restaurant

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurants_path(@restaurant)
    else
      render "restaurant/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
