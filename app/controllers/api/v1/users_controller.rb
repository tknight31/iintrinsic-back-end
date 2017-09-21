class Api::V1::UsersController < ApplicationController

    def create
      @user = User.new(user_params)
      if @user.save
        payload = { user_id: @user.id}
        render json: {user: @user, jwt: issue_token(payload)}
      else
      ## send some error message
      end
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :password, :email, :bio, :role, :user_image)
    end



end
