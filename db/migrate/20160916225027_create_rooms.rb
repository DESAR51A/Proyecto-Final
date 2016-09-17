class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :cod_room
      t.string :nom_room
      t.string :estado
      t.string :capacidad
      t.references :shop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
