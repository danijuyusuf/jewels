FactoryGirl.define do
  factory :offering do
    department_id Faker::Number.digit.to_i
  end
end
