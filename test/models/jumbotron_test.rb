# == Schema Information
#
# Table name: jumbotrons
#
#  id          :integer          not null, primary key
#  head_text   :string           default("Marketing stuff!")
#  lead_text   :string           default("Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet.")
#  button_text :string           default("Get started today")
#  btn_color   :string           default("blue")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class JumbotronTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
