FactoryGirl.define do
  factory :department do
    name Faker::Team.name
    description Faker::Hipster.paragraphs(1)
    moderator_id Faker::Number.digit.to_i
  end
end
