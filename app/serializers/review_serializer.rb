class ReviewSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :text, :deleted

  has_many :activities
end