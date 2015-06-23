if !User.any?
  @user = FactoryGirl.build(:user)
  User.create!(@user.attributes)  
end

if !Blog.any?
  3.times {
    blog = FactoryGirl.build(:blog)
    Blog.create!(blog.attributes)
  }
end

if !Recipe.any?
  3.times {
    @recipe = FactoryGirl.build(:recipe)
    Recipe.create!(@recipe.attributes)
  }
end

if !Review.any?
  3.times {
    @review = FactoryGirl.build(:review)
    Review.create!(@review.attributes)
  }
end

if !Activity.any?
  3.times {
    @activity = FactoryGirl.build(:activity)
    Activity.create!(@activity.attributes)
  }
end