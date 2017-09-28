FactoryGirl.define do
  factory :post do
    title { Faker::Name.name }
    description { Faker::Lorem.sentence }
    body { Faker::Lorem.sentence }
    user_id { 1 }
  end
end
