# == Schema Information
#
# Table name: singers
#
#  id         :integer          not null, primary key
#  nom_singer :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Singer < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs
    
    validates :nom_singer, presence: true, 
                    uniqueness: {case_sensitive: false}
                    
    def to_s
        self.nom_singer
    end
end
