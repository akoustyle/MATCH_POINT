class AddLocationToWishes < ActiveRecord::Migration[6.0]
  def change
    add_column :wishes, :location, :string
  end
end
