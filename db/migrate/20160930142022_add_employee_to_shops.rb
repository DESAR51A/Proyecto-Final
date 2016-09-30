class AddEmployeeToShops < ActiveRecord::Migration
  def change
    add_reference :shops, :employee, index: true, foreign_key: true
  end
end
