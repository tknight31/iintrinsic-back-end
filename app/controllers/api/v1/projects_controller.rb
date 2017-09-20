class Api::V1::ProjectsController < ApplicationController

  def index
    render json: Project.all
  end

  def create
    @project = Project.new(project_params)
    byebug
    @project.save

    index

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
