json.extract! reservation, :id, :fec_reserva, :can_persona, :comentario, :event_id, :client_id, :room_id, :shop_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)