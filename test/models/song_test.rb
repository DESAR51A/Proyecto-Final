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

require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
