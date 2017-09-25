class RequestSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :project

  attributes :id, :user_id, :project_id
end
