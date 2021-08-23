class Wish < ApplicationRecord
  belongs_to :sport
  belongs_to :user
  belongs_to :match
end
