class CreateTeamTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :team_tournaments do |t|
      t.integer :team_id, null: false
      t.integer :tournament_id, null: false

      t.timestamps
    end

    add_index :team_tournaments, [:team_id, :tournament_id], unique: :true
  end
end
