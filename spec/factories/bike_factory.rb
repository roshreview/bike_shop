FactoryGirl.define do
  factory :bike do
    sequence(:serial_number) { |n| "bike #{n}" }

    wheels { create_list :wheel, 2 }
    gears { create_list :gear, 2 }
    accessories { create_list :accessory, 3 }
    frame
    chain
    seat
  end
end
