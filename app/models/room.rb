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
  has_many :reservations
  belongs_to :shop
  validates :cod_room, :nom_room, :capacidad, :shop_id, presence: true
  validates :cod_room, uniqueness: true
  def shop_name
      if self.shop.present?
          self.shop.name
      end
  end
  
  def to_s
        self.nom_room
  end
  
end
