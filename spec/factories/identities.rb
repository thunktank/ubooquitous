# spec/factories/identities.rb

FactoryGirl.define do
  factory :identity do |f|
   	member
   	f.name { Faker::Internet.user_name }
   	f.password { Faker::Lorem.characters 20 }
   	f.email { Faker::Internet.email }
  end
end

