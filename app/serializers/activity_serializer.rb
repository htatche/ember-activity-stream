class ActivitySerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :action, :created_at
end