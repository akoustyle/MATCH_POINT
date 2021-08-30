class User < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :wishes, dependent: :destroy
  has_many :preferences, dependent: :destroy
  has_many :matches, through: :wishes
  has_many :sports, through: :preferences
  has_one_attached :photo
  has_many :chatrooms, through: :messages


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # def current_matched_wish
  #   matches.order(created_at: :desc).first.wishes.find_by(user: self)
  #   # wishes.joins(:match).order(matches: {created_at: :desc}).first
  # end

  # def past_matched_wishes
  #   # return [] if current_matched_wish.nil?

  #   # self.matches.where.not(id: current_match.id)
  #   wishes.joins(:match).where.not(match_id: nil)
  # end

  # def matched_other_wishes
  #   Wish.where(match_id: past_matched_wishes.pluck(:match_id)).where.not(user: self)
  # end

  # def current_matched_other_wish
  #   matched_other_wishes.joins(:match).order("matches.created_at desc").first
  # end

  # def past_matched_other_wishes
  #   other_wishes = matched_other_wishes.joins(:match).order("matches.created_at desc")

  #   if current_matched_other_wish
  #     other_wishes = other_wishes.where.not(id: current_matched_other_wish.id)
  #   end

  #   other_wishes
  # end

  def current_matched_wish
    wishes.where.not(match_id: nil)
          .order(created_at: :desc)
          .first.likes.select {|like| like.user != self }
  end

  # def matched_wishes
  #   wishes.where.not(match_id: nil).flat_map(&:likes)
  # end

  def matched_wishes
    # return Wish.none if current_matched_wish.nil?

    match_ids = wishes.joins(:match).where.not(match_id: nil).pluck(:match_id)
    Wish.where.not(user: self).where(match_id: match_ids)
  end
end
