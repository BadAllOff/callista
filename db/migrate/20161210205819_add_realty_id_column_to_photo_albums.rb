class AddRealtyIdColumnToPhotoAlbums < ActiveRecord::Migration[5.0]
  def change
    add_reference :photo_albums, :realty, index: true
  end
end
