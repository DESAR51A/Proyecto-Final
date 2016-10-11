json.extract! invoice_item, :id, :cod_producto, :precio_unit, :descuento, :cantidad, :costo, :invoice_id, :created_at, :updated_at
json.url invoice_item_url(invoice_item, format: :json)