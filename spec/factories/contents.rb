# spec/factories/contents.rb

FactoryGirl.define do
  factory :content do |f|
   	book_version
   	f.location { Faker::Internet.url }
   	f.media_type { 'application/pdf' }
  end
end

