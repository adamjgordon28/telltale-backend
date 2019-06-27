class Api::V1::AuthController < ApplicationController


  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      token = encode_token(user.id)

      # render json: user
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: "Could not find this username matched with this password. Please try again."}
    end
  end

  def auto_login
    if curr_user
      render json: curr_user
    else
      render json: {errors: "Could not log in"}
    end
  end

end
