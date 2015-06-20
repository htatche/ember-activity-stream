require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    @recipe = FactoryGirl.build(:recipe)
  end

  context "given valid attributes" do
    it "creates a valid instance" do
      Recipe.create!(@recipe.attributes)
    end    
  end

  context "given wrong attributes" do

    it "returns an exception if title is blank" do
      @recipe.title = ""

      expect { Recipe.create!(@recipe.attributes) }.to raise_error ActiveRecord::RecordInvalid
    end    

    it "returns an exception if text is blank" do
      @recipe.text = ""

      expect { Recipe.create!(@recipe.attributes) }.to raise_error ActiveRecord::RecordInvalid
    end    

  end  

end
