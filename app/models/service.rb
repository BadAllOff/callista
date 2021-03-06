# == Schema Information
#
# Table name: services
#
#  id                       :integer          not null, primary key
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  preview_img_file_name    :string
#  preview_img_content_type :string
#  preview_img_file_size    :integer
#  preview_img_updated_at   :datetime
#

class Service < ApplicationRecord
  translates :title, :description, :preview, fallbacks_for_empty_translations: true
  # TODO: test scope
  default_scope { order(created_at: :asc) }

  has_attached_file :preview_img, styles: { thumb: '100x100#', original: '350x196#' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :preview_img, content_type: /\Aimage\/.*\z/

  validates_presence_of :title, :description, :preview, :preview_img
end
