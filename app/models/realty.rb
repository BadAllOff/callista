class Realty < ApplicationRecord
  has_one :photo_album
  has_attached_file :realty_img, styles: { original: "270x200#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :realty_img, content_type: /\Aimage\/.*\z/
end
