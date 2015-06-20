require 'rails_helper'

RSpec.describe Review, type: :model do
  before(:each) do
    @review = FactoryGirl.build(:review)
  end

  context "given valid attributes" do
    it "creates a valid instance" do
      Review.create!(@review.attributes)
    end    
  end

  context "given wrong attributes" do

    it "returns an exception if text is blank" do
      @review.text = ""

      expect { Review.create!(@review.attributes) }.to raise_error ActiveRecord::RecordInvalid
    end    

    it "returns an exception if it has no user" do
      @review.user = nil

      expect { Review.create!(@review.attributes) }.to raise_error ActiveRecord::RecordInvalid
    end  

  end  

end
