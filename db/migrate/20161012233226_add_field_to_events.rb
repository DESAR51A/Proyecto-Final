class AddFieldToEvents < ActiveRecord::Migration
  def change
    add_column :events, :fecha, :datetime
    add_column :events, :capacidad, :integer
    add_column :events, :descripcion, :text
  end
end
