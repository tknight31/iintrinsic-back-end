class ProjectSerializer < ActiveModel::Serializer
  belongs_to :creator
  has_many :users
  has_many :requests
  attributes :id, :category, :created_at, :creator, :current_status, :long_desc, :name, :project_image, :project_link, :short_desc, :target_launch

end
