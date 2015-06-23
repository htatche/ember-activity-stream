class ActivitySerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :user_id, :blog_id, :recipe_id, :review_id, :action, :created_at
end