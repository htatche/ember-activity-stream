require 'rails_helper'

RSpec.describe Blog, type: :model do
  before(:each) do
    @blog = FactoryGirl.build(:blog)
  end

  context "given valid attributes" do
    it "creates a valid instance" do
      Blog.create!(@blog.attributes)
    end    
  end

  context "given wrong attributes" do
    it "returns an exception" do
      @blog.url = "nz@google.com"

      expect { Blog.create!(@blog.attributes) }.to raise_error ActiveRecord::RecordInvalid
    end    
  end

end
