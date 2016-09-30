class CreateEmployeeRoles < ActiveRecord::Migration
  def change
    create_table :employee_roles do |t|
      t.string :nom_rol

      t.timestamps null: false
    end
  end
end
