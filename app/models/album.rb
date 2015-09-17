# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  band_id    :integer          not null
#  rec_type   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           default(""), not null
#

class Album < ActiveRecord::Base
  belongs_to :band, dependent: :destroy
  has_many :tracks
end
