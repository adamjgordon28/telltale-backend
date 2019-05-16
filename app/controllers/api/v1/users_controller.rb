class Api::V1::UsersController < ApplicationController

  def index
    @users= User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(params)
    @user.save
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  def profile
    render json: {user: UserSerializer.new(current_user)}, status: :accepted
  enabled


  def user_params
  params.require(:user).permit(:username, :password, :name, :bio, :location, :age)
  end


end
