class AuthController < ApplicationController

    def create
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: {username: user.username}, status:200 
        else 
            render json:{error: "Invalid username and password"}
        end
    end
end