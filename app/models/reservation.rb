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

  def to_s
        self.event_id
  end


end
