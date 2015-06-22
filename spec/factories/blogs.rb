FactoryGirl.define do

  factory :blog do
    user { create(:user) }

    sequence( :id ) { |n| "#{n}" }
    name { Faker::Lorem.sentence }
    url { Faker::Internet.url }
  end

end