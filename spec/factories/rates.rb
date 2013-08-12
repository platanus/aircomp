# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rate do
    direction "MyString"
    rate_type "MyString"
    rate_desc "MyString"
    rate 1
    flight "MyString"
    trip nil
  end
end
