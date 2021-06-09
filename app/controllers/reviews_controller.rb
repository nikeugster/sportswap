class ReviewsController < ApplicationController
  before_action :set_offer, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.offer = @offer
    @review.user = @offer.user
    @review.author_id = current_user.id
    if @review.save
      redirect_to offer_path(@offer)
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
