class RemoveColumnsFromModels < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :countries, :country_name
    remove_column :countries, :description

    remove_column :jumbotrons, :head_text
    remove_column :jumbotrons, :lead_text
    remove_column :jumbotrons, :button_text

    remove_column :pages, :title
    remove_column :pages, :description

    remove_column :photo_albums, :title

    remove_column :services, :title
    remove_column :services, :description
    remove_column :services, :preview

    remove_column :realties, :title
    remove_column :realties, :description
  end

  def self.down
    add_column :countries, :country_name, :string
    add_column :countries, :description, :text

    add_column :jumbotrons, :head_text, :string
    add_column :jumbotrons, :lead_text, :text
    add_column :jumbotrons, :button_text, :string

    add_column :pages, :title, :string
    add_column :pages, :description, :text

    add_column :photo_albums, :title, :string

    add_column :services, :title, :string
    add_column :services, :description, :text
    add_column :services, :preview, :text

    add_column :realties, :title, :string
    add_column :realties, :description, :text


  end
end
