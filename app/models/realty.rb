class Realty < ApplicationRecord
  translates :title, :description, fallbacks_for_empty_translations: true

  has_one :photo_album, dependent: :nullify
  belongs_to :country
  has_attached_file :realty_img, styles: { original: '270x200#' }, default_url: '/images/:style/missing.png'

  validates_attachment_content_type :realty_img, content_type: /\Aimage\/.*\z/
  validates_presence_of :title, :description, :realty_img, :country
end
