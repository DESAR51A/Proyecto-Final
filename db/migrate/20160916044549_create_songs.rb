class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :cod_song
      t.string :nom_song
      t.string :artista_song
      t.string :genero_song
      t.datetime :anio_song
      t.string :estado

      t.timestamps null: false
    end
  end
end
