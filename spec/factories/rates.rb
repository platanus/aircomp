# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rate do
    trait :tam do
      rate_type {[:T0,:T1,:T2,:T3].sample}
      rate_desc {{T0:'Promo',T1:'Economic',T2:'Regular',T3:'Flexible'}[self.rate_type]}
      flight {"JJ-" + (rand(790) + 3000).to_s}
      rate {[18,19,20,22,24,26].sample * 1000}
      association :trip, :tam
    end
    trait :gol do
      rate_type {[:SM,:AD,:SS,:SR].sample}
      rate_desc {{SS:'Smile',AD:'Smile Any Day',SM:'Smile And Money',SR:'Smile Reduzida'}[self.rate_type]}
      flight {"G3-" + (rand(790) + 3000).to_s}
      rate {[10,11,12,13,14,15].sample * 1000}
      association :trip, :gol
    end
    direction {["forward","back"].sample}
   
  end
end
