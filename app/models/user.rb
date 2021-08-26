class User < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :wishes, dependent: :destroy
  has_many :preferences, dependent: :destroy
  has_many :matches, through: :wishes
  has_many :sports, through: :preferences
  has_many_attached :photos


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def current_match
    self.matches.order(created_at: :desc).first
  end

  def past_matches
    return [] if current_match.nil?
    self.matches.where.not(id: current_match.id)
  end
end
