class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.string :album
      t.string :url
      t.integer :playlist_id

      t.timestamps
    end
  end
end
