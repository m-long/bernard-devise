class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.references :location, foreign_key: true, null: false
      t.references :device_model, foreign_key: true, null: false

      # Ensure device names are unique in each location
      t.index [:name, :location_id], unique: true

      t.timestamps
    end
  end
end
