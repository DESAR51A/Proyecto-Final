class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nom_emp
      t.integer :dni
      t.integer :phone
      t.references :employee_role, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
