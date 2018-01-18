FactoryBot.define do
  factory :purchase do
    date { Date.tomorrow }

    customer
  end
end
