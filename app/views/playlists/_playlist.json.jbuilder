json.extract! playlist, :id, :play_order, :reservation_id, :song_id, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)