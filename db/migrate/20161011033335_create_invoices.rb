class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :fec_invoice
      t.integer :num_ruc
      t.string :nom_cliente
      t.decimal :val_invoice
      t.references :reservation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
