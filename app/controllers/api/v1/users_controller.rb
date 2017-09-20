class Api::V1::UsersController < ApplicationController


    def create
      @user = User.new(first_name: params[:first_name], last_name: params[:last_name], password:params[:password])
      if @user.save
        payload = { user_id: @user.id}
        render json: {user: @user, jwt: issue_token(payload)}
      ## send some message for success
      else
      ## send some error message
      end
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :bio, :role, :project_image)
    end



end
