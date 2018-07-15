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

require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :preview }
    it { should validate_presence_of :project_img }
  end
end
