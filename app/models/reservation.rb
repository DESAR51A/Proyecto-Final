class Reservation < ActiveRecord::Base
  belongs_to :event
  belongs_to :client
  belongs_to :room
  belongs_to :shop
end
