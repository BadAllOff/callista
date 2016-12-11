class AddTranslationsToRestOfTheModels < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Jumbotron.create_translation_table! :head_text => :string, :lead_text => :string, :button_text => :string
        PhotoAlbum.create_translation_table! :title => :string
        Project.create_translation_table! :title => :string, :description => :text, :preview => :text
        Realty.create_translation_table! :title => :string, :description => :text
        Service.create_translation_table! :title => :string, :description => :text
      end

      dir.down do
        Jumbotron.drop_translation_table!
        PhotoAlbum.drop_translation_table!
        Project.drop_translation_table!
        Realty.drop_translation_table!
        Service.drop_translation_table!
      end
    end
  end
end
