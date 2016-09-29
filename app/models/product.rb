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
#

class Product < ActiveRecord::Base
end
