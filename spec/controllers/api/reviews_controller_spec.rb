require 'rails_helper'

RSpec.describe Api::ReviewsController, type: :controller do

  before(:each) do
    @user = FactoryGirl.build(:user)
    User.create!(@user.attributes)    
  end  

  describe "GET #show" do
    it "returns http success" do
      @review = FactoryGirl.build(:review)
      Review.create!(@review.attributes)

      get :show, :id => @review.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http created" do
      post :create, :review => {
        :user_id => User.last.id,
        :text => "I love the last Jurassic Park"
      }
      expect(response).to have_http_status(:created)
    end
  end

  describe "PUT #update" do
    it "returns http success" do
      @review = FactoryGirl.build(:review)
      Review.create!(@review.attributes)

      put :update, :id => @review.id, :review => {
        :user_id => @review.user.id,
        :text => "I love the last Jurassic Park"
      }

      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #destroy" do
    it "returns http success" do
      @review = FactoryGirl.build(:review)
      Review.create!(@review.attributes)

      delete :destroy, :id => @review.id
      expect(response).to have_http_status(:success)
    end
  end

end
