class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :nickname
      t.string :user_name, null: false
      t.string :email, null: false
      t.string :phone_number
      t.integer :status, null: false, default: 0, limit: 1
      t.integer :role, null: false, default: 0, limit: 1
      t.date :birthday
      t.integer :team_id, null: false, limit: 1
      t.string :image

      t.timestamps
    end

    add_index :users, :status
    add_index :users, :role
    add_index :users, :email, unique: true
    add_index :users, :team_id
  end
end
