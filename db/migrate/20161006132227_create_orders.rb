class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :reservation, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end
