# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	d = Date.today
  factory :trip do
  	trait :tam do
    	operator "TAM"
    end
    trait :gol do
    	operator "GOL"
    end
    departing {d + rand(90)}
    returning {self.departing + rand(45)}
    origin {["SAO", "RIO", "BHZ", "BSB"].sample}
    destination {["FOR", "REC", "SSA", "NAT"].sample}
  end
end
