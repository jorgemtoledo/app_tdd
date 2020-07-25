FactoryBot.define do
  factory :weapon do
    name { FFaker::Lorem.word }
    description { FFaker::Lorem.phrase }
    power_base { FFaker::Random.rand(1..3000) }
    power_step { FFaker::Random.rand(1..100) }
    level { FFaker::Random.rand(1..50) }
  end
end