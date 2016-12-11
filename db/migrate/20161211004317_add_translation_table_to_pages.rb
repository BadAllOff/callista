class AddTranslationTableToPages < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Page.create_translation_table! :title => :string, :description => :text
      end

      dir.down do
        Page.drop_translation_table!
      end
    end
  end
end
