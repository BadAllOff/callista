# == Schema Information
#
# Table name: pages
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  jumbotron_id :integer
#
# Indexes
#
#  index_pages_on_jumbotron_id  (jumbotron_id)
#

require 'rails_helper'

RSpec.describe Page, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
  end
end
