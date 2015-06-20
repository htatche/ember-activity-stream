FactoryGirl.define do

  factory :blog do
    user { create(:user) }
    
    title { Faker::Lorem.sentence }
    url { Faker::Internet.url }
  end

end