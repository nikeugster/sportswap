class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @new_offers = Offer.all.reverse[0..5].each_slice(3).to_a
  end

  def dashboard
    @offers = Offer.all
    @chatroom = Chatroom.find(params[:chatroom_id]) if params[:chatroom_id].present?
  end
end
