class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :tournament_id, null: false
      t.datetime :held_at
      t.string :location
      t.string :opponent
      t.integer :team_score
      t.integer :opponent_score

      t.timestamps
    end

    add_index :games, :tournament_id
  end
end
