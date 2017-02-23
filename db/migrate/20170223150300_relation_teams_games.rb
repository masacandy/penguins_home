class RelationTeamsGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :team_id, :integer, null: false, after: :tournament_id
    add_index :games, :team_id
  end
end
