class RemoveShopRefToComment < ActiveRecord::Migration
  def change
    remove_reference :comments, :shop, index: true, foreign_key: true
  end
end
