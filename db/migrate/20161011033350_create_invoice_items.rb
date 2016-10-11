class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.integer :cod_producto
      t.decimal :precio_unit
      t.decimal :descuento
      t.integer :cantidad
      t.decimal :costo
      t.references :invoice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
