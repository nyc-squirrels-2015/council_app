# Add FactoryGirl for council controller
FactoryGirl.define do
  factory :user do |f|
    f.firstname {Faker::Name.first_name}
    f.lastname {Faker::Name.last_name}
    f.email {"test@example.com"}
    f.password {"admin"}
  end

  factory :council do |f|
    f.council_name { Faker::Commerce.department }
    f.association :user
  end

  factory :council_member do |f|
    f.user :user
    f.council :council
  end

  factory :friendship do |f|
    f.friend_id 2
    f.association :user
  end

  factory :question do |f|
    f.content {Faker::Lorem.sentence}
    f.image {Faker::Avatar.image}
    f.council_id 1
    f.association :user
  end

end
