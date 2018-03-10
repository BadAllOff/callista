# == Schema Information
#
# Table name: photo_albums
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photos     :json
#  realty_id  :integer
#
# Indexes
#
#  index_photo_albums_on_realty_id  (realty_id)
#

require 'rails_helper'

RSpec.describe PhotoAlbum, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
  end

  describe 'Associations' do
    it { should belong_to(:realty) }
  end
end
