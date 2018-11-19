class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :completed
  has_many :comments
end
