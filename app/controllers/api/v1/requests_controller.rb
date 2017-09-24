class Api::V1::RequestsController < ApplicationController
  before_action :authorized, only: [:create]


    def create
      @request = Request.new(user: current_user, project_id: params[:id])
      @request.save

      render json: Project.all
    end




end
