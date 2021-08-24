class Wish < ApplicationRecord
  belongs_to :sport
  belongs_to :user
  belongs_to :match, optional: true
  has_many :likes
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :date, presence: true

end
