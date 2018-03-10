class AddPreviewImgToRealtyCountries < ActiveRecord::Migration[5.0]
  def up
    add_attachment :realty_countries, :preview_img
  end

    def down
      remove_attachment :realty_countries, :preview_img
    end
end
