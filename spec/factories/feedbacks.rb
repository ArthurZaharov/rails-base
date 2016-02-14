FactoryGirl.define do
  factory :feedback do
    email
    name  { "Faker::Name.name dghf dhgh dkgh kdh gh dfkhgdfjhgjkfgdfhjg df k" }
    message { Faker::Lorem.paragraph }
    phone { Faker::PhoneNumber.phone_number }
  end
end
