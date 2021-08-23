class Location < ApplicationRecord
  belongs_to :sport
  has_many :matches

  validates :name, :address, presence: true
end
