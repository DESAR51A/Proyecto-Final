json.extract! room, :id, :cod_room, :nom_room, :estado, :capacidad, :shop_id, :created_at, :updated_at
json.url room_url(room, format: :json)