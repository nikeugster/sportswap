class Review < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  validates :content, :rating, presence: true
end
