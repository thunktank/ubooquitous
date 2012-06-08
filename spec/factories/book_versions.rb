# spec/factories/book_versions.rb

FactoryGirl.define do
  factory :book_version do
   	book
   	publisher
  end
end

