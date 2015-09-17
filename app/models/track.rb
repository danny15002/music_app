# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  album_id   :integer          not null
#  track_type :string           not null
#  lyrics     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           default(""), not null
#

class Track < ActiveRecord::Base
  include TracksHelper
  belongs_to :album, dependent: :destroy
  has_many :notes
end
