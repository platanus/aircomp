# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip do
    operator "MyString"
    departure "2013-08-12"
    returning "2013-08-12"
    origin "MyString"
    destination "MyString"
  end
end
