# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	d = Date.today
  factory :trip do |t|
    t.operator "GOL"
    t.departing {d + rand(90)}
    t.returning {self.departing + rand(45)}
    t.origin {["SAO", "RIO", "BHZ", "BSB"].sample}
    t.destination {["FOR", "REC", "SSA", "NAT"].sample}
  end
end
