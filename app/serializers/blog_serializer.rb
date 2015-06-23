class BlogSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :url, :deleted

  has_many :activities
end