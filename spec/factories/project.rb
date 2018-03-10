FactoryBot.define do
  factory :project do
    title 'Project title'
    description 'Project description'
    preview 'Project preview'
    project_img { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures', '10x10.jpg')) }
  end
end
