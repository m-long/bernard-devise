class CreateKeys < ActiveRecord::Migration[5.1]
  def change
    create_table :keys do |t|
      t.string :name, null: false, limit: 50
      t.string :value, null: false, limit: 50
      t.references :remote, foreign_key: true, null: false

      # Don't allow duplicate keys on the remote
      t.index [:name, :value], unique: true

      t.timestamps
    end
  end
end
