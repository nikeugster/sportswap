class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    query = "#{params[:equipment]} #{params[:location]}"

    if query.present?
      @offers = Offer.search_by_title_and_location(query)
    else
      @offers = Offer.all
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:category, :condition, :description, :location, :compensation, :active)
  end
end
