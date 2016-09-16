class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :dni
      t.string :mail
      t.date :birth
      t.integer :phone

      t.timestamps null: false
    end
  end
end
