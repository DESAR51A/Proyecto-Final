class Singer < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs
    
    validates :nom_singer, presence: true, 
                    uniqueness: {case_sensitive: false}
end
