FactoryGirl.define do
  factory :moderator do
    firstname Faker::Name.first_name
    lastname Faker::Name.last_name
    email Faker::Internet.email
    password "aaaaaaa"
    password_confirmation "aaaaaaa"
  end
end
