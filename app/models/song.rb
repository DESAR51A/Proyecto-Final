# == Schema Information
#
# Table name: songs
#
#  id           :integer          not null, primary key
#  cod_song     :integer
#  nom_song     :string(255)
#  artista_song :string(255)
#  genero_song  :string(255)
#  anio_song    :datetime
#  estado       :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Song < ActiveRecord::Base
end