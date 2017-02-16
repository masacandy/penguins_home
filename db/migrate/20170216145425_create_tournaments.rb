class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.string :name, null: false
      t.date :season_start
      t.date :season_end
      t.integer :game_type, null: false, limit: 1

      t.timestamps
    end
  end
end
