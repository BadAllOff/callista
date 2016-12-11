# == Schema Information
#
# Table name: projects
#
#  id                       :integer          not null, primary key
#  title                    :string           default("Project title")
#  preview                  :text             default("Project Preview text")
#  description              :text             default("Project description text")
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  project_img_file_name    :string
#  project_img_content_type :string
#  project_img_file_size    :integer
#  project_img_updated_at   :datetime
#

class Project < ApplicationRecord
  translates :title, :description, :preview

  has_attached_file :project_img, styles: {thumb: '268x150#', original: '350x196#' }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :project_img, content_type: /\Aimage\/.*\z/
end
