FactoryBot.define do
  factory :country do
    country_name'Azerbaijan'
    preview_img { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures', '10x10.jpg')) }
  end
end
