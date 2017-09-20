class User < ApplicationRecord
  has_secure_password
  has_many :projects, through: :project_users
  has_many :projects, :foreign_key => :creator_id
  has_many :skills, through: :project_skills

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
