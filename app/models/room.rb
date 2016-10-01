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

class Room < ActiveRecord::Base
  belongs_to :shop
  
      def shop_name
        if self.shop.present?
            self.shop.name
        end
    end

  
end
