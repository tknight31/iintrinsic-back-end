class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :bio, :role, :email, :linkedin, :latitude, :longitude, :ghost_mode, :user_image
end
