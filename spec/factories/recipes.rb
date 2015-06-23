FactoryGirl.define do
  factory :recipe do
    user  { create(:user) }

    sequence( :id ) { |n| "#{n}" }
    name { Faker::Lorem.sentence }
    text  { Faker::Lorem.paragraph }
  end

end
