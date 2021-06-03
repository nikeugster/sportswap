class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
  end

  def create
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
    @booking.user_id = current_user.id
    @booking.offer = @offer
    booking_dates = params[:booking]
    @booking.starts_at = booking_dates["starts_at"]
    @booking.ends_at = booking_dates["ends_at"]
    if @booking.save
      redirect_to dashboard_path, notice: "You've successfully made a booking inquiry for '#{@offer.title}' from #{@offer.user.first_name}."
    else
      render :new
    end
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
