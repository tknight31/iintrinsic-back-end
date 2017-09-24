class Project < ApplicationRecord
  belongs_to :creator, :class_name => "User"
  has_many :requests
  has_many :users, through: :requests
  has_many :skills, through: :project_skills
  has_many :goals
end
