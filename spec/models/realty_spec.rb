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
