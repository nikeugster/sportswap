class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    query = "#{params[:equipment]} #{params[:category]}"

    if query.present?
      @offers = Offer.search_by_title_and_category(query)
    else
      @offers = Offer.all
    end

    if params[:location].present?
      @offers = @offers.near(params[:location], 30)
    end

    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { offer: offer })
      }
    end
  end

  def show
    @booking = Booking.new
    @review = Review.new
    @users = User.all
    @author = @review.author_id
    respond_to do |format|
      format.html
      format.json { render json: { arts: @arts } }
    end
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
    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
    else
      render :edit
    end
  end

  def destroy
    @offer.destroy
    redirect_to dashboard_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:category, :condition, :title, :description, :street, :house_no, :zip_code, :city, :country, :compensation_type, :compensation_value, :active, photos: [])
  end
end
