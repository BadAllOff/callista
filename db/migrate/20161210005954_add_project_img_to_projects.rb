class AddProjectImgToProjects < ActiveRecord::Migration[5.0]
  def up
    add_attachment :projects, :project_img
  end

  def down
    remove_attachment :projects, :project_img
  end
end
