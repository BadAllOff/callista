# == Schema Information
#
# Table name: realties
#
#  id                      :integer          not null, primary key
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  realty_img_file_name    :string
#  realty_img_content_type :string
#  realty_img_file_size    :integer
#  realty_img_updated_at   :datetime
#

class Realty < ApplicationRecord
  translates :title, :description

  has_one :photo_album
  has_attached_file :realty_img, styles: { original: "270x200#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :realty_img, content_type: /\Aimage\/.*\z/
end
