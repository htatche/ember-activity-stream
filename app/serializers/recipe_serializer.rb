class RecipeSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :text, :deleted

  has_many :activities
end