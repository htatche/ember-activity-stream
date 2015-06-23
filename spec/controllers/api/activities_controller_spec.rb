require 'rails_helper'

RSpec.describe Api::ActivitiesController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      @activity = FactoryGirl.build(:activity)
      Activity.create!(@activity.attributes)

      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http created" do
      post :create, :activity => {
        "user_id": 1,
        "blog_id": nil,
        "recipe_id": nil,
        "review_id": nil,
        "action": "create",
        "created_at": "2015-06-22T23:54:21.894Z"
      }

      expect(response).to have_http_status(:created)
    end
  end
end
