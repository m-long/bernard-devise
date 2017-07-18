class CreateDeviceModels < ActiveRecord::Migration[5.1]
  def change
    create_table :device_models do |t|
      t.string :name, limit: 50, null: false
      t.boolean :has_smart_integration, default: false, null: false
      t.references :submitter, foreign_key: { to_table: :users }, null: false
      t.references :device_brand, foreign_key: true, null: false
      t.references :device_type, foreign_key: true, null: false

      # Ensure device model is unique (within the brand)
      t.index [:name, :device_brand_id], unique: true

      t.timestamps
    end
  end
end
