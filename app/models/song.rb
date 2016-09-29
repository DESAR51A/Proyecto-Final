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
