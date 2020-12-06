FactoryBot.define do
  factory :event do
    association :user
    name { 'あああ' }
    explanation { 'あああ' }
    facility_id { 2 }
    scale_id { 2 }
    category_id { 2 }
  end
end
