class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :fec_reserva
      t.integer :can_persona
      t.string :comentario
      t.references :event, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true
      t.references :shop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
