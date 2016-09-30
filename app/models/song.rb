# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  nom_song   :string(255)
#  duracion   :decimal(10, )
#  anio_song  :integer
#  singer_id  :integer
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  belongs_to :singer
  belongs_to :genre
  
  def singer_name    
    self.singer.name  
  end
      
  def genre_name    
    self.genre.name  
  end
  
  validates :singer, presence: true 
  validates :genre, presence: true 
  validates :nom_song, presence: true, 
                    uniqueness: {case_sensitive: false}
end
