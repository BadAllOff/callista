FactoryBot.define do
  factory :realty do
    country
    title 'Mansion'
    description 'This is description of mansion'
    realty_img { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures', '10x10.jpg')) }
  end
end
