class AddPhotosToPhotoalbums < ActiveRecord::Migration[5.0]
  def change
    add_column :photo_albums, :photos, :json
  end
end
