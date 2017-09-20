class User < ApplicationRecord
  has_secure_password
  has_many :projects, through: :project_users
  has_many :projects, :project_users, :foreign_key => :creator_id
  has_many :skills, through: :project_skills
end
