class CreateSingers < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.string :nom_singer

      t.timestamps null: false
    end
  end
end
