class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name, limit: 50, null: false
      t.string :last_name, limit: 50, null: false
      t.string :email, limit: 50, null: false
      t.boolean :admin, default: false

      t.index :email, unique: true

      t.timestamps
    end
  end
end
