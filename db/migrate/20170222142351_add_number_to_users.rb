class AddNumberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :number, :integer, after: :nickname
    add_index :users, :number
    change_column :stats, :assist, :integer, null: :true, default: :null
    change_column :stats, :play_time, :integer, null: :true, default: :null
    change_column :stats, :block, :integer, null: :true, default: :null
    change_column :stats, :steal, :integer, null: :true, default: :null
    change_column :stats, :turn_over, :integer, null: :true, default: :null
  end
end
