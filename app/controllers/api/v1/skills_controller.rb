class Api::V1::SkillsController < ApplicationController
  before_action :authorized, only: [:create, :show]
  def index
    render json: currentUser.skills
  end

  def create
    @skill = Skill.find_or_create_by(name: params[:name])
    @user_skill = UserSkill.new(user: current_user, skill: @skill)
    @user_skill.save

    render json: current_user.skills
  end



  def show
    @user = User.find(params[:id])
    render json: @user.skills
  end




end
