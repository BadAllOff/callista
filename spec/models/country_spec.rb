# == Schema Information
#
# Table name: countries
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

RSpec.describe Country, type: :model do
  describe 'Associations' do
    it { should have_many(:realties).dependent(:destroy) }
  end

  describe 'Validations' do
    it { should validate_presence_of :country_name }
    it { should validate_presence_of :preview_img }
  end
end
