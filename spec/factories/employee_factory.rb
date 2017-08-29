FactoryGirl.define do
  factory :employee do
    sequence(:name) { |n| "employee #{n}" }

    store
    manager
  end
end
