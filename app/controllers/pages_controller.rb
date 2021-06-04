class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @new_offers = Offer.all.reverse[0..11].each_slice(3).to_a
    # @bikes2 = Offer.where()
  end

  def dashboard
    @offers = Offer.all
  end
end
