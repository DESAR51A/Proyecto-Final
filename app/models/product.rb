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

class Product < ActiveRecord::Base
    belongs_to :category
    has_many :orders
    belongs_to :shop
    #validates_associated :category
    validates :cod_product, :nom_product, :price, :category_id, :shop_id, presence: true
    validates :cod_product, uniqueness: true
    validates :cod_product, length: { maximum: 3 }
    validates :nom_product, length: { maximum: 20 }
    validates :price, numericality: true
    
    def category_name
        if self.category.present?
            self.category.name
        end
    end
    def shop_name
        if self.shop.present?
            self.shop.name
        end
    end

    def to_s
        self.nom_product
    end

end
