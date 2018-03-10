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