# == Schema Information
#
# Table name: countries
#
#  id                       :integer          not null, primary key
#  country_name             :string
#  description              :text
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  preview_img_file_name    :string
#  preview_img_content_type :string
#  preview_img_file_size    :integer
#  preview_img_updated_at   :datetime
#

require 'test_helper'

class RealtyCountryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
