# == Schema Information
#
# Table name: photo_albums
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photos     :json
#  realty_id  :integer
#
# Indexes
#
#  index_photo_albums_on_realty_id  (realty_id)
#

class PhotoAlbum < ApplicationRecord
  translates :title, fallbacks_for_empty_translations: true

  belongs_to :realty
  mount_uploaders :photos, PhotosUploader

  validates_presence_of :title
end
