class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :house, :alter_ego, :is_student, :teacher_id)
    end
end
