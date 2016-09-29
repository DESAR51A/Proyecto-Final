class Genre < ActiveRecord::Base
    has_many :songs
    has_many :singers, through: :songs
end
