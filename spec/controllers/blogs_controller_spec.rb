require 'rails_helper'

RSpec.describe Api::BlogsController, type: :controller do

  describe "POST #create" do
    it "returns http success" do
      post :create, :blog => {
        :user => 1,
        :title => "This time is for good",
        :url => "http://thistimeisforgood.com"
      }
      expect(response).to have_http_status(:created)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
