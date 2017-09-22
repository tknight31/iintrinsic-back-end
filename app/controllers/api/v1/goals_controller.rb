class Api::V1::GoalsController < ApplicationController

  def index
    render json: Project.all
  end
end
