FactoryGirl.define do
  factory :activity do
    user { create(:user) }
    blog { create(:blog) }

    sequence( :id ) { |n| "#{n}" }
    action "create"
  end

end
