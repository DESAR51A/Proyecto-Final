class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :code
      t.string :name
      t.string :address
      t.string :telephone
      t.string :email
      t.string :description
      t.string :admin

      t.timestamps null: false
    end
  end
end
