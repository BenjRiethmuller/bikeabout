class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :photo, presence: true
  validates :bio, presence: true

  has_one_attached :photo

  has_many :bikes, dependent: :destroy

  has_many :bookings, dependent: :destroy

  has_many :messages
  has_many :conversations
  has_many :chatrooms, through: :messages
end
