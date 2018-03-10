require 'rails_helper'

RSpec.describe Page, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
  end
end