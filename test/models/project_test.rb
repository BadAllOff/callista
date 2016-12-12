# == Schema Information
#
# Table name: projects
#
#  id                       :integer          not null, primary key
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  project_img_file_name    :string
#  project_img_content_type :string
#  project_img_file_size    :integer
#  project_img_updated_at   :datetime
#  start_date               :datetime
#

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
