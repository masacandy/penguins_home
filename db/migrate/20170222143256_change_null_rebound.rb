class ChangeNullRebound < ActiveRecord::Migration[5.0]
  def change
    change_column :stats, :offence_rebound, :integer, null: :true, default: :null
    change_column :stats, :deffence_rebound, :integer, null: :true, default: :null
  end
end
