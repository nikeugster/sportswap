class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :category, :condition, :desciption, :location, :compensation_type, :compensation_value, presence: true
end
