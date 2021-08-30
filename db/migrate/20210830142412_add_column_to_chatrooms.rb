class AddColumnToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :user1, null: false, foreign_key: {to_table: :users}
    add_reference :chatrooms, :user2, null: false, foreign_key: {to_table: :users}
  end
end
