class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id, :comment, :rating
end
