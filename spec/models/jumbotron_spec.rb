require 'rails_helper'

RSpec.describe Jumbotron, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :head_text}
    it { should validate_presence_of :lead_text}
    it { should validate_presence_of :button_text}
    it { should validate_presence_of :btn_color}
  end
end