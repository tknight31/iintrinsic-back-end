class Api::V1::ProjectsController < ApplicationController
  before_action :authorized, only: [:index, :show, :create, :update, :destroy, :users]

  def index
    render json: Project.all
  end

  def create

    @project = Project.new(name: params[:name], category: params[:category], short_desc: params[:short_desc], long_desc: params[:long_desc])
    @project.creator = current_user
    @project.save

    params[:goals].each do |goal|
      Goal.create(description: goal[:description], project: @project)
    end

    index
  end

  def update
    @project = Project.find(params[:id])
    @project.update(name: params[:name], category: params[:category], short_desc: params[:short_desc], long_desc: params[:long_desc])
    render json: @project
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

  def update_image
    @project = Project.find(params[:id])
      @project.update(project_image: params[:project_image])
    render json: {url: @project.project_image}
  end


  def destroy
  end


  private

  def project_params
    params.require(:project).permit(:name, :long_desc, :short_desc, :category, :goals, :project_link, :target_launch, :project_image)
  end

end
