# Add FactoryGirl for council controller
FactoryGirl.define do
  factory :comment do
    council_name { Faker::Commerce.department }
    user_id { 1 }
  end
end
