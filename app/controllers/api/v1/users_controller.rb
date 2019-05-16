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
    user = User.create(username: params[:username], password: params[:password], name: params[:name], bio: params[:bio], location: params[:location], age: params[:age])
    if user.valid?
      @token = encode_token(user.id)
      render json: {user: UserSerializer.new(user), token: @token }, status: :created
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
  end








end
