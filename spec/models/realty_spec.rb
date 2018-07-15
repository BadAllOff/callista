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
#  country_id              :integer
#
# Indexes
#
#  index_realties_on_country_id  (country_id)
#

require 'rails_helper'

RSpec.describe Realty, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :country }
    it { should validate_presence_of :realty_img }
  end

  describe 'Associations' do
    it { should have_one(:photo_album).dependent(:nullify) }
    it { should belong_to(:country) }
  end
end
