class Comment < ActiveRecord::Base
  belongs_to :client
  belongs_to :reservation
  
  
  def client_name
    if self.client.present?
      self.client.name
    end
  end
  
  def fecha_dma
    self.fec_reserva.strftime("%d/%m/%Y")
  end
  
  def to_s
        self.client.name + ' - ' + self.fec_reserva.strftime("%d/%m/%Y") 
  end

  def self.from_client(client)
    Reservation.where(client_id: client.id)
  end
  
  def shop
    if self.reservation.present?
      self.reservation.shop_id
    end
  end

  def self.from_shop(shop)
    Comment.joins(:reservation).where('reservations.shop_id = ?', shop.id)
  end

  
end
