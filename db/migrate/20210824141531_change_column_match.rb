class ChangeColumnMatch < ActiveRecord::Migration[6.0]
  def change
    change_column :wishes, :match_id, :integer, null: true
  end
end
