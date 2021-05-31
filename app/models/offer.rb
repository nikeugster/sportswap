class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :category, :condition, :desciption, :location, :compensation, presence: true
end
