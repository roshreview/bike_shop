FactoryBot.define do
  factory :employee do
    sequence(:name) { |n| "employee #{n}" }
  end
end
