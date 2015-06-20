FactoryGirl.define do
  factory :recipe do
    user  { create(:user) }

    title { Faker::Lorem.sentence }
    text  { Faker::Lorem.paragraph }
  end

end
