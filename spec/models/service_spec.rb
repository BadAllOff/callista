require 'rails_helper'

RSpec.describe Service, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :preview }
    it { should validate_presence_of :preview_img }
  end
end