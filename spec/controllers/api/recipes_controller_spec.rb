require 'rails_helper'

RSpec.describe Api::RecipesController, type: :controller do

  before(:each) do
    @user = FactoryGirl.build(:user)
    User.create!(@user.attributes)    
  end  

  describe "GET #show" do
    it "returns http success" do
      @recipe = FactoryGirl.build(:recipe)
      Recipe.create!(@recipe.attributes)

      get :show, :id => @recipe.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http created" do
      post :create, :recipe => {
        :user_id => User.last.id,
        :name => "Chicken moustard",
        :text => "Get all your ingredients and equipment ready. Put a..."
      }
      expect(response).to have_http_status(:created)
    end
  end

  describe "PUT #update" do
    it "returns http success" do
      @recipe = FactoryGirl.build(:recipe)
      Recipe.create!(@recipe.attributes)

      put :update, :id => @recipe.id, :recipe => {
        :user_id => @recipe.user.id,
        :name => "Chicken moustard",
        :text => "Get all your ingredients and equipment ready. Put a..."
      }

      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #destroy" do
    it "returns http success" do
      @recipe = FactoryGirl.build(:recipe)
      Recipe.create!(@recipe.attributes)

      delete :destroy, :id => @recipe.id
      expect(response).to have_http_status(:success)
    end
  end

end
