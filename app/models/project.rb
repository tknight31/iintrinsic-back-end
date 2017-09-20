class Project < ApplicationRecord
  belongs_to :creator, :class_name => :user
  has_many :users, through: :project_users
  has_many :skills, through: :project_skills
  has_many :goals
end
