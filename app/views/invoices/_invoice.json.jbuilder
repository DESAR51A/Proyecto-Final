json.extract! invoice, :id, :fec_invoice, :num_ruc, :nom_cliente, :val_invoice, :reservation_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)