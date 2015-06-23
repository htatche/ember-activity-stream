FactoryGirl.define do
  factory :review do
    user  { create(:user) }

    sequence( :id ) { |n| "#{n}" }
    text  { Faker::Lorem.paragraph }
  end

end