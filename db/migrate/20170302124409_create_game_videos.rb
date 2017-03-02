class CreateGameVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :game_videos do |t|
      t.integer :game_id, null: false
      t.string :video_url, null: false
      t.integer :sort, null: false, default: 0
      t.boolean :active, null: false, default: true

      t.timestamps
    end

    add_index :game_videos, :game_id
  end
end
