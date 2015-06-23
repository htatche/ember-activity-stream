class UserSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name

  has_many :blogs
  has_many :recipes
  has_many :reviews
  has_many :activities
end