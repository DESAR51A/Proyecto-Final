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

class Reservation < ActiveRecord::Base
  belongs_to :event
  belongs_to :client
  belongs_to :room
  belongs_to :shop
  has_many :orders
  validates :fec_reserva, :can_persona, :client_id, :room_id, :shop_id, presence: true
  has_many :playlists
  has_many :songs, through: :playlists
  has_many :comments
  
  def shop_name
        if self.shop.present?
            self.shop.name
        end
  end
  
  def room_name
        if self.room.present?
            self.room.nom_room
        end
  end
  
  def client_name
        if self.client.present?
            self.client.name
        end
  end
  
  def event_name
        if self.event.present?
            self.event.nom_evento
        end
  end
  
  def fecha_dma
    self.fec_reserva.strftime("%d/%m/%Y")
  end
  
  def to_s
        self.client.name + ' - ' + self.fec_reserva.strftime("%d/%m/%Y") + ' -  ' + self.room.nom_room + ' (' + self.shop.name + ')'
  end

  def self.from_client(client)
    Reservation.where(client_id: client.id)
  end


end
