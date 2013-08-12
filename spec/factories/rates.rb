# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rate do |r|
    r.direction {["forward","back"].sample}
    r.rate_type {[:SM,:AD].sample}
    r.rate_desc {{SM:'Smiles',AD:'Smiles Any Day'}[self.rate_type]}
    r.rate {[10,11,12,13,14,15].sample * 1000}
    r.flight {"G3-" + (rand(290) + 1000).to_s}
    r.trip
  end
end
