class RenameInRealtyRealtyCountryIdColumnToCountryId < ActiveRecord::Migration[5.0]
  def self.up
    # realties table
    remove_index :realties, :realty_country_id
    rename_column :realties, :realty_country_id, :country_id
    add_index :realties, :country_id
  end

  def self.down
    # realties table
    remove_index :realties, :country_id
    rename_column :realties, :country_id, :realty_country_id
    add_index :realties, :realty_country_id
  end
end
