FactoryGirl.define do
  factory :store do
    sequence(:name) { |n| "store #{n}" }

    managers { create_list :manager, 3 }
    employees { create_list :employee, 3 }
    bikes { create_list :bike, 3 }
    customers { create_list :customer, 3 }
  end
end
