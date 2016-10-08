# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  cod_product :integer
#  nom_product :string(255)
#  estado      :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  price       :decimal(10, )
#  shop_id     :integer
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
