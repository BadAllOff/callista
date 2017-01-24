class AddRealtyCountryReferenceToRealties < ActiveRecord::Migration[5.0]
  def change
    add_reference :realties, :realty_country, index: true
  end
end
