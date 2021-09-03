class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user


  def receiver
    chatroom.user1 == user ? chatroom.user2 : chatroom.user1
  end
end
