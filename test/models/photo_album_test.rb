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

require 'test_helper'

class PhotoAlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
