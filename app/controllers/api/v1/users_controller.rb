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
    @user = User.find_or_create_by(user_params)
    render json: @user
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

  def user_params
  params.require(:user).permit(:name, :bio, :location, :age)
  end


end
