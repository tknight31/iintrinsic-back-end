class User < ApplicationRecord
  has_secure_password
  has_many :requests
  has_many :projects, through: :requests
  has_many :created_projects, :class_name => "Project", :foreign_key => :creator_id
  has_many :skills, through: :project_skills

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
