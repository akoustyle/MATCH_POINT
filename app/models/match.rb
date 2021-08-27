class Match < ApplicationRecord
  belongs_to :location
  has_many :wishes
  has_many :users, through: :wishes

  def address
    location.address
  end
end
