class CreatePhotoAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_albums do |t|
      t.string :title

      t.timestamps
    end
  end
end
