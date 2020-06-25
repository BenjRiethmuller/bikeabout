class Review < ApplicationRecord
  belongs_to :bike
  belongs_to :user

  validates :rating, presence: true
  validates :description, presence: true
end
