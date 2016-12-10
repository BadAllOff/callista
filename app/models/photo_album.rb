class PhotoAlbum < ApplicationRecord
  belongs_to :realty
  mount_uploaders :photos, PhotosUploader
end
