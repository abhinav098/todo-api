class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :todo_id
end
