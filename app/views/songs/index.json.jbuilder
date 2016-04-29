json.array!(@songs) do |song|
  json.extract! song, :id, :name, :track_number, :album_id
  json.url song_url(song, format: :json)
end
