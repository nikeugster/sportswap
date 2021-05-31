class BookingsController < ApplicationController
  def create
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
