class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title, default: 'Project title'
      t.text :preview, default: 'Project Preview text'
      t.text :description, default: 'Project description text'

      t.timestamps
    end
  end
end
