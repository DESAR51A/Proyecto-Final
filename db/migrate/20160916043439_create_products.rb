class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :cod_product
      t.string :nom_product
      t.string :estado

      t.timestamps null: false
    end
  end
end
