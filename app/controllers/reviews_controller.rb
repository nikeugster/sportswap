class ReviewsController < ApplicationController
  def create
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
