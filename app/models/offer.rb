class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many_attached :photos
  validates :category, :condition, :title, :description, :street, :zip_code, :city, :country, :compensation_type, :compensation_value, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_title_and_location,
    against: [:title, :description, :city, :street, :zip_code],
    using: {
      tsearch: { prefix: true }
    }
end
