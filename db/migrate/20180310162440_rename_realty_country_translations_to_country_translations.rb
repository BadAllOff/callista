class RenameRealtyCountryTranslationsToCountryTranslations < ActiveRecord::Migration[5.0]
  def self.up
    # realty_country_translations to country_translations
    remove_index :realty_country_translations, :realty_country_id
    rename_table :realty_country_translations, :country_translations
    rename_column :country_translations, :realty_country_id, :country_id
    add_index :country_translations, :country_id
  end

  def self.down
    # country_translations to realty_country_translations
    remove_index :country_translations, :country_id
    rename_table :country_translations, :realty_country_translations
    rename_column :realty_country_translations, :country_id, :realty_country_id
    add_index :realty_country_translations, :realty_country_id
  end
end
