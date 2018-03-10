FactoryBot.define do
  factory :service do
    title 'Service title'
    description 'Service description'
    preview 'Service preview'
    preview_img { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures', '10x10.jpg')) }
  end
end
