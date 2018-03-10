class ChangeRealtyCountriesToCountries < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :realty_countries, :countries
  end

  def self.down
    rename_table :countries, :realty_countries
  end
end
