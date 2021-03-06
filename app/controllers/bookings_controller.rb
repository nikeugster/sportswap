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
      @booking.compensation_value = "Free"
    when "Other"
      @booking.compensation_value = @offer.compensation_value
    end
    $modalvalue = @booking.compensation_value
    $modalstart = @booking.starts_at
    $modalend = @booking.ends_at
    create_chatroom
    $showmodal = true if @booking.save
    redirect_to offer_path(@offer)
  end

  def update
    @booking = Booking.find(params[:id])
    case params[:format]
    when "accepted" then @booking.status = "accepted"
    when "declined" then @booking.status = "declined"
    end
    if @booking.save
      ActionCable.server.broadcast(
      "StatusUpdateChannel",
      booking_status: @booking.status,
      booking_id: @booking.id
      )

      case @booking.status
      when "accepted" then redirect_to dashboard_path(anchor: "open-booking-requests"), notice: "You have accepted #{@booking.user.first_name}'s booking request."
      when "declined" then redirect_to dashboard_path(anchor: "open-booking-requests"), notice: "You have declined #{@booking.user.first_name}'s booking request."
      end
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      redirect_to dashboard_path(anchor: "open-booking-requests"), notice: "Booking deleted."
    else
      render :dashboard
    end
  end

  private

  def create_chatroom
    @chatroom = Chatroom.new
    @chatroom.sender = current_user
    @chatroom.recipient = @offer.user
    @chatroom.save unless users_chatrooms_any?(@chatroom)
  end

  def users_chatrooms_any?(chatroom)
    query1 = Chatroom.where('sender_id = ? AND recipient_id = ?', chatroom.sender_id, chatroom.recipient_id).present?
    query2 = Chatroom.where('sender_id = ? AND recipient_id = ?', chatroom.recipient_id, chatroom.sender_id).present?
    query1 || query2
  end

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :compensation_type, :compensation_value)
  end
end
