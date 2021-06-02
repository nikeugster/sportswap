class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :category, :condition, :title, :description, :location, :compensation_type, :compensation_value, presence: true

  include PgSearch::Model

  pg_search_scope :search_by_title_and_location,
    against: [:title, :description, :location],
    using: {
      tsearch: { prefix: true }
    }
end
