class SkillsSerializer < ActiveModel::Serializer
  has_many :project
  has_many :user

  attributes :id, :name
end
