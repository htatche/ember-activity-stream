require 'rails_helper'

RSpec.describe Api::BlogsController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      @blog = FactoryGirl.build(:blog)
      Blog.create!(@blog.attributes)

      get :show, :id => @blog.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http created" do
      post :create, :blog => {
        :user_id => 1,
        :name => "This time is for good",
        :url => "http://thistimeisforgood.com"
      }
      expect(response).to have_http_status(:created)
    end
  end

  describe "PUT #update" do
    it "returns http success" do
      @blog = FactoryGirl.build(:blog)
      Blog.create!(@blog.attributes)

      put :update, :id => @blog.id, :blog => {
        :user_id => @blog.user.id,
        :name => "This time is for good",
        :url => "http://thistimeisforgood.com"
      }

      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #destroy" do
    it "returns http success" do
      @blog = FactoryGirl.build(:blog)
      Blog.create!(@blog.attributes)

      delete :destroy, :id => @blog.id
      expect(response).to have_http_status(:success)
    end
  end

end
