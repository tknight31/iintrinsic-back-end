class Skill < ApplicationRecord
  has_many :users, through: :user_skills
  has_many :projects, through: :project_skills
end
