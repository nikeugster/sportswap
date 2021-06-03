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

  def unavailable_dates
    bookings.pluck(:starts_at, :ends_at).map do |range|
      { from: range[0], to: range[1] }
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def address
    [street, house_no, zip_code, city, country].compact.join(', ')
  end

  def will_save_change_to_address?
    will_save_change_to_street? || will_save_change_to_house_no? || will_save_change_to_zip_code? || will_save_change_to_city? || will_save_change_to_country?
  end
end
