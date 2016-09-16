json.extract! product, :id, :cod_product, :nom_product, :estado, :created_at, :updated_at
json.url product_url(product, format: :json)