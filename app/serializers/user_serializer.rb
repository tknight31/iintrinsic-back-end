class UserSerializer < ActiveModel::Serializer
  has_many :projects
  has_many :created_projects

  attributes :id, :first_name, :last_name, :bio, :role, :email, :linkedin, :latitude, :longitude, :ghost_mode, :user_image, :created_projects, :projects
end
