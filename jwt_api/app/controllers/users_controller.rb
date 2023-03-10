class UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        if @user.save
            token = encode_token({ user_id: @user.id })
            render json: @user, token: token
        else
            render json: { error: 'Invalid Username OR Password' }, status: :unprocessable_entity
        end
    end

    def login
        @user = User.find_by(username: user_params[:username])
        if @user&.authenticate(user_params[:password])
            token = encode_token({ user_id: @user.id })
            render json: {user: @user, token: token}, status: :ok
        else
            render json: { error: 'Invalid Username OR Password' }, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
