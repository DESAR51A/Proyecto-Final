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
#

class Product < ActiveRecord::Base
    belongs_to :category
    has_many :orders
    #validates_associated :category
    validates :nom_product, :price, :category_id, presence: true
    validates :cod_product, uniqueness: true
    
    def category_name
        if self.category.present?
            self.category.name
        end
    end

    def to_s
        self.nom_product
    end

end
