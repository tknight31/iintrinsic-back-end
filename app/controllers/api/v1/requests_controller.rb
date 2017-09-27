class Api::V1::RequestsController < ApplicationController
  before_action :authorized, only: [:create]


    def create
      @request = Request.new(user: current_user, project_id: params[:id])
      @request.save

      render json: Project.all
    end

    def update
      @request = Request.find(params[:id])
      @request.current_status = params[:status]
      @request.save

      render json: current_user.created_projects
    end




end
