class Api::V1::AuthController < ApplicationController

skip_before_action :authorized, only: [:create]

  def create
    user = User.find_by(username: params[:username])


    if user && user.authenticate(params[:password])
      token = encode_token(user.id)

      # render json: user
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: "You dun goofed!"}
    end
  end

  def auto_login
    if curr_user
      render json: curr_user
    else
      render json: {errors: "You dun goofed!"}
    end
  end

end
