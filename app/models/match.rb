class Match < ApplicationRecord
  belongs_to :location
  has_many :wishes
  has_many :users, through: :wishes

  def address
    location.address
  end

  def chatroom
    user, other_user = wishes.map { |wish| wish.user }

    Chatroom.where(
      "(user1_id = :user_id AND user2_id = :other_user_id)
        OR
      (user1_id = :other_user_id AND user2_id = :user_id)",
      user_id: user.id,
      other_user_id: other_user.id
    ).first
  end
end
