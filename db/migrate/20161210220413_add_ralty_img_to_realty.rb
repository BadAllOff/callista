class AddRaltyImgToRealty < ActiveRecord::Migration[5.0]
  def up
    add_attachment :realties, :realty_img
  end

  def down
    remove_attachment :realties, :realty_img
  end
end
