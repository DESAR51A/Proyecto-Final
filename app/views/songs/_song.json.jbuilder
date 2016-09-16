json.extract! song, :id, :cod_song, :nom_song, :artista_song, :genero_song, :anio_song, :estado, :created_at, :updated_at
json.url song_url(song, format: :json)