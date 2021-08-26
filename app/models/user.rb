class User < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :wishes, dependent: :destroy
  has_many :preferences, dependent: :destroy
  has_many :matches, through: :wishes
  has_many :sports, through: :preferences
  has_one_attached :photo


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def current_matched_wish
    matches.order(created_at: :desc).first.wishes.find_by(user: self)
  end

  def past_matched_wishes
    return [] if current_matched_wish.nil?

    # self.matches.where.not(id: current_match.id)
    wishes.joins(:match).where.not(match_id: nil)
  end
end
