class UsersController < ApplicationController
    before_action :find_user, only: %i[edit update]
    def index
        @user = User.all.order(created_at: :DESC)
    end

    def edit
    
    end

    def update
        if @user.update(user_params)
            redirect_to users_path
        else
            render :edit
        end
    end

    private

    def find_user
        @user = User.find_by(id: params[:id])
    end
    
    def user_params
        params.require(:user).permit({ role_ids: [] })
    end
end