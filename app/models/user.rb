class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  has_many :offers, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_many :bookings_as_owner, through: :offers, source: :bookings

  has_many :chatrooms_as_sender, class_name: "Chatroom", foreign_key: :sender_id
  has_many :chatrooms_as_recipient, class_name: "Chatroom", foreign_key: :recipient_id

  validates :photo, :first_name, :last_name, presence: true

  def chatrooms
    chatrooms_as_sender + chatrooms_as_recipient
  end
end
