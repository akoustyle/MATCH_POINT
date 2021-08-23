class Sport < ApplicationRecord
  has_many :wishes, :locations, :preferences

  validates :name, presence: true, uniqueness: true
end
