class RemoveAdminFromShops < ActiveRecord::Migration
  def change
    remove_column :shops, :admin, :string
  end
end
