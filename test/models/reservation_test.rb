# == Schema Information
#
# Table name: reservations
#
#  id          :integer          not null, primary key
#  fec_reserva :date
#  can_persona :integer
#  comentario  :string(255)
#  event_id    :integer
#  client_id   :integer
#  room_id     :integer
#  shop_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
