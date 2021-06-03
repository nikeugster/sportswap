class OffersController < ApplicationController
  def index
    query = "#{params[:equipment]} #{params[:location]}"

    if params[:query].present?
      @offers = Offer.search_by_title_and_location(query)
    else
      @offers = Offer.all
    end
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user_id = current_user.id
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
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
    params.require(:offer).permit(:category, :condition, :title, :description, :street, :house_no, :zip_code, :city, :country, :compensation_type, :compensation_value, :active, photos: [])
  end
end
