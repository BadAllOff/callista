class AddPreviewToServiceTranslationTable < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Service.add_translation_fields! preview: :text
      end

      dir.down do
        remove_column :service_translations, :preview
      end
    end
  end
end
