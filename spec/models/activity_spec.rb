require 'rails_helper'

RSpec.describe Activity, type: :model do
  before(:each) do
    @activity = FactoryGirl.build(:activity)
  end

  context "given valid attributes" do
    it "creates a valid instance" do
      Activity.create!(@activity.attributes)
    end    
  end

  context "given wrong attributes" do
    it "raises if action is not valid" do
      @activity.action = "Tom and Jerry"

      expect { Activity.create!(@activity.attributes) }.to raise_error ActiveRecord::RecordInvalid
    end    
  end
end
