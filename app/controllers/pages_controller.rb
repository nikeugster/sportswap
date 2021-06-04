class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @new_offers = Offer.all.reverse[0..5].each_slice(3).to_a
  end

  def dashboard
  end
end
