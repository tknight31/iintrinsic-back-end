class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: [:me, :index, :show, :update]

    def index
      render json: User.all
    end


    def create
      @user = User.new(user_params)
      if @user.save
        payload = { user_id: @user.id}
        render json: {user: @user, jwt: issue_token(payload)}
      else
      ## send some error message
      end
    end

    def show
      @user = User.find(params[:id])
      render json: @user
    end


    def update
      @user = User.find(params[:id])
    		@user.update(latitude: params[:latitude], longitude: params[:longitude])

      render json: @user
    end

    def update_ghost
      @user = current_user
        @user.update(ghost_mode: params[:ghost_mode])

      render json: @user.ghost_mode
    end



    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :password, :email, :bio, :role, :user_image, :latitude, :longitude)
    end



end
