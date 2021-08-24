class Sport < ApplicationRecord
  has_many :wishes
  has_many :locations
  has_many :preferences

  validates :name, presence: true, uniqueness: true
end
