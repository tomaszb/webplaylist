json.array!(@playlists) do |playlist|
  json.extract! playlist, :title, :user_id
  json.url playlist_url(playlist, format: :json)
end
