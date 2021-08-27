class Match < ApplicationRecord
  belongs_to :location
  has_many :wishes
  has_many :users, through: :wishes
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
