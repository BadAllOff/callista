# == Schema Information
#
# Table name: realties
#
#  id                      :integer          not null, primary key
#  title                   :string
#  description             :text
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  realty_img_file_name    :string
#  realty_img_content_type :string
#  realty_img_file_size    :integer
#  realty_img_updated_at   :datetime
#

require 'test_helper'

class RealtyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
