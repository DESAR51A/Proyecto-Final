class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :client, index: true, foreign_key: true
      t.references :shop, index: true, foreign_key: true
      t.string :comment
      t.integer :rating

      t.timestamps null: false
    end
  end
end
