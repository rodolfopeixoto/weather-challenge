FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    first_name { FFaker::NameBR.first_name  }
    last_name { FFaker::NameBR.last_name  }
    password { "password"}
    password_confirmation { "password" }
  end
end
