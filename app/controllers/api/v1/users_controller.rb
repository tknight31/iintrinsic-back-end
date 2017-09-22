class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: [:me, :index]

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



    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :password, :email, :bio, :role, :user_image)
    end



end
