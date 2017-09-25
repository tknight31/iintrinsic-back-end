class UserSerializer < ActiveModel::Serializer
  has_many :projects
  has_many :requests

  attributes :id, :first_name, :last_name, :bio, :role, :email, :linkedin, :latitude, :longitude, :ghost_mode, :user_image
end
