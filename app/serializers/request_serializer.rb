class RequestSerializer < ActiveModel::Serializer
  belongs_to :project
  belongs_to :user

  attributes :id, :user, :project_id, :current_status
end
