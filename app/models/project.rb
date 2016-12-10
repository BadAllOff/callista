class Project < ApplicationRecord
  has_attached_file :project_img, styles: {thumb: '268x150#', original: '350x196#' }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :project_img, content_type: /\Aimage\/.*\z/
end
