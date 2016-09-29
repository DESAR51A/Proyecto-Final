json.extract! client, :id, :name, :dni, :mail, :birth, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)