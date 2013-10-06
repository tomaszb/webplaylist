json.array!(@songs) do |song|
  json.extract! song, :artist, :title, :album, :url, :playlist_id
  json.url song_url(song, format: :json)
end
