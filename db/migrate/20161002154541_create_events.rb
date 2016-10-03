class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :nom_evento

      t.timestamps null: false
    end
  end
end
