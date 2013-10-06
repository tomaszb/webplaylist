class CreateSongplaylinks < ActiveRecord::Migration
  def change
    create_table :songplaylinks do |t|
      t.integer :song_id
      t.integer :playlist_id

      t.timestamps
    end
  end
end
