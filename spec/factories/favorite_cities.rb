FactoryBot.define do
  factory :favorite_city do
    name { FFaker::Address.city }
    user
  end
end
