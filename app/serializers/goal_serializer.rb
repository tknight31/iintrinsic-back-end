class GoalSerializer < ActiveModel::Serializer
  belongs_to :project

  attributes :id, :description, :project, :completed, :completed_date
end
