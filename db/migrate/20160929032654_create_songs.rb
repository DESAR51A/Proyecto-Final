class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :nom_song
      t.decimal :duracion
      t.integer :anio_song
      t.references :singer, index: true, foreign_key: true
      t.references :genre, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
