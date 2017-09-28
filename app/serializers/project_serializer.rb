class ProjectSerializer < ActiveModel::Serializer
  belongs_to :creator
  has_many :users
  has_many :requests
  has_many :skills
  has_many :goals

  attributes :id, :category, :created_at, :creator, :current_status, :long_desc, :requests, :name, :project_image, :project_link, :short_desc, :goals, :target_launch

end
