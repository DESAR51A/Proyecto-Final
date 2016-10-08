# == Schema Information
#
# Table name: playlists
#
#  id             :integer          not null, primary key
#  play_order     :integer
#  reservation_id :integer
#  song_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Playlist < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :song
  
  
  validates :song, presence: true 
  validates :reservation, presence: true
end
