json.extract! song, :id, :nom_song, :duracion, :anio_song, :singer_id, :genre_id, :created_at, :updated_at
json.url song_url(song, format: :json)