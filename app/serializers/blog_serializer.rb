class BlogSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :user_id, :title, :url
end