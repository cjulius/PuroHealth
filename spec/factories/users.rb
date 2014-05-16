
FactoryGirl.define do
  factory :user do
    name 'Charles'
    sequence(:email) { |n| "email#{n}@gmail.com" }
    password 'pw'
  end
end
