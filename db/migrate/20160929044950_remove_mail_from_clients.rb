class RemoveMailFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :mail, :string
  end
end
