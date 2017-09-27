class Api::V1::ProjectsController < ApplicationController
  before_action :authorized, only: [:index, :show, :create, :update, :destroy, :users]

  def index
    render json: Project.all
  end

  def create
    @project = Project.new(project_params)
    @project.creator = current_user
    @project.save

    index
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end

  def created_projects
    @user = User.find(params[:id])
    @created_projects = @user.created_projects
    render json: @created_projects

  end

  def user_projects
    @user = User.find(params[:id])
    @projects = @user.projects

    render json: @projects

  end

  def users
    @project = Project.find(params[:id])
    @requests = @project.requests.where(:current_status => "accepted")

    @project_users = @requests.map do |req|
      req.user
    end

    render json: @project_users
  end

  def user_remove
    @project = Project.find(params[:id])
    render json: @project.users
  end

  def update
  end

  def destroy
  end


  private

  def project_params
    params.require(:project).permit(:name, :long_desc, :short_desc, :category, :project_link, :target_launch, :project_image)
  end

end
