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

require 'rails_helper'

RSpec.describe Service, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :preview }
    it { should validate_presence_of :preview_img }
  end
end
