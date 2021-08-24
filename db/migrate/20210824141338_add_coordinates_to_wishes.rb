class AddCoordinatesToWishes < ActiveRecord::Migration[6.0]
  def change
    add_column :wishes, :latitude, :float
    add_column :wishes, :longitude, :float
  end
end
