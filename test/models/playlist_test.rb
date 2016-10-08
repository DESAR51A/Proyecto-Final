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

require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
