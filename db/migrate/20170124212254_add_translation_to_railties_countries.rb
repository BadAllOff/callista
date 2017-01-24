class AddTranslationToRailtiesCountries < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        RealtyCountry.create_translation_table! country_name: :string, description: :string
      end

      dir.down do
        RealtyCountry.drop_translation_table!
      end
    end
  end
end
