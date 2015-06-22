class UserSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name

  has_many :blogs
end