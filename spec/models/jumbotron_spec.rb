# == Schema Information
#
# Table name: jumbotrons
#
#  id         :integer          not null, primary key
#  btn_color  :string           default("blue")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Jumbotron, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :head_text}
    it { should validate_presence_of :lead_text}
    it { should validate_presence_of :button_text}
    it { should validate_presence_of :btn_color}
  end
end
