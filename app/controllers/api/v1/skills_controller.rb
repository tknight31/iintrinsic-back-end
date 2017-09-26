class Api::V1::SkillsController < ApplicationController
  before_action :authorized, only: [:create]
  def index
    render json: currentUser.skills
  end

  def create

    @skill = Skill.find_or_create_by(name: params[:name])
    @user_skill = UserSkill.new(user: current_user, skill: @skill)
    @user_skill.save

    render json: current_user
  end




end
