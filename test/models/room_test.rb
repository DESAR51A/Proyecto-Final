# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  cod_room   :integer
#  nom_room   :string(255)
#  estado     :string(255)
#  capacidad  :string(255)
#  shop_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
