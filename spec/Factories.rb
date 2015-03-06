# Add FactoryGirl for council controller
FactoryGirl.define do
  factory :council do |f|
    f.council_name { Faker::Commerce.department }
    f.user_id { 1 }
  end
end
