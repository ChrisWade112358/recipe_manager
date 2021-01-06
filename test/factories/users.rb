FactoryGirl.define do
  factory :user do
    password "password"
    sequence(:email) { |n| "example_user_#{n}@example.com" }
    sequence(:name) { |n| "Fake Person number #{n}"}
  end
end
