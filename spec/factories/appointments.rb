# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :appointment do
    user nil
    room nil
    provider nil
    admitted "2014-03-25 13:51:05"
    discharge "2014-03-25 13:51:05"
  end
end
