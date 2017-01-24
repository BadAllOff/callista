class CreateRealtyCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :realty_countries do |t|
      t.string :country_name
      t.text :description

      t.timestamps
    end
  end
end
