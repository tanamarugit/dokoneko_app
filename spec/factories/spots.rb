FactoryBot.define do
  factory :spot do
    address { "MyString" }
    latitude { 1.5 }
    longitude { 1.5 }
    review { nil }
  end
end
