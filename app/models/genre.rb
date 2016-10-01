# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  des_genre  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ActiveRecord::Base
    has_many :songs
    has_many :singers, through: :songs
    
    def to_s
        self.des_genre
    end
end
