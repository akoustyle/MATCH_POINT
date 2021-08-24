class Wish < ApplicationRecord
  belongs_to :sport
  belongs_to :user
  belongs_to :match, optional: true
  has_many :likes

  validates :date, presence: true

end
