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
    @booking.compensation_type = @offer.compensation_type
    case @booking.compensation_type
    when "Price per hour"
      @booking.compensation_value = (@offer.compensation_value.to_i * ((@booking.ends_at.to_i - @booking.starts_at.to_i) / 60 / 60)).to_s
    when "Price per day"
      @booking.compensation_value = (@offer.compensation_value.to_i * ((@booking.ends_at.to_i - @booking.starts_at.to_i) / 24 / 60 / 60)).to_s
    when "Free"
      @booking.compensation_value = ""
    when "Other"
      @booking.compensation_value = @offer.compensation_value
    end
    $modaltype =
    $modalvalue =
    $modalstart =
    $modalend =
    $showmodal = true if @booking.save
    redirect_to offer_path(@offer)
  end

  def update
    @booking = Booking.find(params[:id])
    case params[:format]
    when "accepted" then @booking.status = "accepted"
    when "declined" then @booking.status = "declined"
    end
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      redirect_to dashboard_path, notice: "Booking declined."
    else
      render :dashboard
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :data_totalprice, :data_pricetype)
  end
end
