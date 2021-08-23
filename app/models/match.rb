class Match < ApplicationRecord
  belongs_to :location
  has_many :wishes
end
