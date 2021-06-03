class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @art = Art.find(params[:art_id])
  end

  def create
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
