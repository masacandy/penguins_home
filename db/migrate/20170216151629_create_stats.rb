class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.integer :user_id, null: false
      t.integer :game_id, null: false
      t.integer :two_point_made, null: false, default: 0
      t.string :two_point_attempt
      t.integer :three_point_made, null: false, default: 0
      t.integer :three_point_attempt
      t.integer :free_throw_made, null: false, default: 0
      t.integer :free_throw_attempt
      t.integer :offence_rebound, null: false, default: 0
      t.integer :deffence_rebound, null: false, default: 0
      t.integer :assist, null: false, default: 0
      t.integer :block, null: false, default: 0
      t.integer :steal, null: false, default: 0
      t.integer :play_time, null: false, default: 0
      t.integer :turn_over, null: false, default: 0
      t.integer :personal_foul, null: false, default: 0
      t.boolean :starting_member, null: false, default: false

      t.timestamps
    end

    add_index :stats, [:user_id, :game_id], unique: :true
    add_index :stats, :two_point_made
    add_index :stats, :three_point_made
    add_index :stats, :free_throw_made
    add_index :stats, :offence_rebound
    add_index :stats, :deffence_rebound
    add_index :stats, :assist
    add_index :stats, :block
    add_index :stats, :steal
    add_index :stats, :starting_member
  end
end
