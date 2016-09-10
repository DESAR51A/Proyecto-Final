# == Schema Information
#
# Table name: shops
#
#  id          :integer          not null, primary key
#  code        :string(255)
#  name        :string(255)
#  address     :string(255)
#  telephone   :string(255)
#  email       :string(255)
#  description :string(255)
#  admin       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
