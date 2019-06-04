FactoryBot.define do
  factory :favorite_city do
    name { FFaker::Address }
    user
  end
end
