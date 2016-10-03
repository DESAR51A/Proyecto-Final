json.extract! event, :id, :nom_evento, :created_at, :updated_at
json.url event_url(event, format: :json)