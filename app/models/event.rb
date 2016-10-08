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
    
  def to_s
        self.nom_evento
  end
end
