FactoryGirl.define do
  factory :manager do
    sequence(:name) { |n| "manager #{n}" }

    store
    employees { create_list :employee, 3 }
  end
end
