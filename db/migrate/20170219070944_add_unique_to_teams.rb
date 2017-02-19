class AddUniqueToTeams < ActiveRecord::Migration[5.0]
  def change
    add_index :teams, :name, unique: :true
    add_column :teams, :cap_id, :integer, after: :name
  end
end
