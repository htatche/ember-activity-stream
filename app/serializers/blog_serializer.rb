class BlogSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :url

  has_many :activities
end