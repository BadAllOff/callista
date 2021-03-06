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

class Page < ApplicationRecord
  translates :title, :description, fallbacks_for_empty_translations: true

  belongs_to :jumbotron

  validates_presence_of :title, :description
end
