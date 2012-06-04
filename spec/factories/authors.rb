# spec/factories/authors.rb
require 'faker'
require 'random_data'

FactoryGirl.define do
  factory :author do |f|
	  # f.birthday { RandomData::Dates::date('1920-01-01'..'1990-12-31') }
    f.birthplace { [ Faker::Address.city, Faker::Address.country ].join(',') }
	  f.first_name { Faker::Name.first_name }
	  f.last_name { Faker::Name.last_name }
	  f.full_name { [f.first_name, f.last_name].join(',') }
	end
end

