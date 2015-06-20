FactoryGirl.define do
  factory :review do
    user  { create(:user) }

    text  { Faker::Lorem.paragraph }
  end

end