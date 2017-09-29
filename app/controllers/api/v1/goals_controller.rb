class Api::V1::GoalsController < ApplicationController

  def index
    render json: Goal.all
  end

  def create
    @project = Project.find(params[:id])
    Goal.create(description: params[:description], project: @project)

    render json: @project.goals
  end


  def destroy
    @goal = Goal.find(params[:id])
    @project = @goal.project
    @goal.destroy

    render json: @project.goals
  end
end
