json.extract! order, :id, :reservation_id, :product_id, :cantidad, :created_at, :updated_at
json.url order_url(order, format: :json)