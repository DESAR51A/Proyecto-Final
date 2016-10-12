# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  nom_evento :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ActiveRecord::Base
    has_many :reservations
    validates :nom_evento, presence: true
    validates :fecha, presence: true
    validates :capacidad, presence: true
    validates :descripcion, presence: true
    
  def to_s
        self.nom_evento
  end

  def fecha_dma
    if self.fecha.present?
        self.fecha.strftime("%d/%m/%Y")
    end
  end


end
