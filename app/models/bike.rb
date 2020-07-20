class Bike < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true, acceptance: { accept: ["Mountain Bike", "Road Bike", "BMX", "Commuting Bike", "Fixed Gear", "Tandem", "Tricycle", "Kids Bike"] }
  validates :address, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_address,
  against: [ :address ],
  using: {
    tsearch: { prefix: true }
  }

  def unavailable_dates
   bookings.pluck(:start_date, :end_date).map do |range|
    { from: range[0], to: range[1] }
  end
  end
end
