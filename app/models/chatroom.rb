class Chatroom < ApplicationRecord
  has_many :messages

  has_many :users, as: :sender
  has_many :users, as: :recipient
end
