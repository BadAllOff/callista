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

FactoryBot.define do
  factory :page do
    title 'Page title'
    description 'Page description'
  end
end
