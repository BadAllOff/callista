class AddPreviewToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :preview, :text
  end
end
