json.array!(@songplaylinks) do |songplaylink|
  json.extract! songplaylink, :song_id, :playlist_id
  json.url songplaylink_url(songplaylink, format: :json)
end
