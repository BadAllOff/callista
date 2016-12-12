# == Schema Information
#
# Table name: jumbotrons
#
#  id         :integer          not null, primary key
#  btn_color  :string           default("blue")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Jumbotron < ApplicationRecord
  translates :head_text, :lead_text, :button_text, :fallbacks_for_empty_translations => true
  has_many :pages
end
