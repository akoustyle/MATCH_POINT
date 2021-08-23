class CreateWishes < ActiveRecord::Migration[6.0]
  def change
    create_table :wishes do |t|
      t.date :date
      t.references :sport, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :match, null: false, foreign_key: true

      t.timestamps
    end
  end
end
