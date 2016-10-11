class AddReservationRefToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :reservation, index: true, foreign_key: true
  end
end
