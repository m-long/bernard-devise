class CreateDeviceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :device_types do |t|
      t.string :name, limit: 50, null: false
      t.references :submitter, foreign_key: { to_table: :users }, null: false

      # Ensure device types are unique
      t.index :name, unique: true

      t.timestamps
    end
  end
end
