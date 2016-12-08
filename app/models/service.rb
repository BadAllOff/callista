class Service < ApplicationRecord
  has_attached_file :preview_img, styles: {thumb: '100x100#', original: '350x196#' }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :preview_img, content_type: /\Aimage\/.*\z/
end
