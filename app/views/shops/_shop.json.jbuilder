json.extract! shop, :id, :code, :name, :address, :telephone, :email, :description, :admin, :created_at, :updated_at
json.url shop_url(shop, format: :json)