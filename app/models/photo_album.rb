class PhotoAlbum < ApplicationRecord
  mount_uploaders :photos, PhotosUploader
end
