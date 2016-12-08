class AddPreviewImageToServices < ActiveRecord::Migration[5.0]
  def up
    add_attachment :services, :preview_img
  end

  def down
    remove_attachment :services, :preview_img
  end
end
