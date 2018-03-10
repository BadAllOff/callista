require 'rails_helper'

RSpec.describe PhotoAlbum, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
  end

  describe 'Associations' do
    it { should belong_to(:realty) }
  end
end