class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name, limit: 50, null: false
      t.references :user, foreign_key: true, null: false

      # Ensure user locations are unique
      t.index [:name, :user_id], unique: true

      t.timestamps
    end
  end
end
