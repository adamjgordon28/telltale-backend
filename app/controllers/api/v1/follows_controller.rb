class Api::V1::FollowsController < ApplicationController

  def index
    @follows= Follow.all
    render json: @follows
  end

  def show
    @follow = Follow.find(params[:id])
    render json: @follow
  end

  def create
    @follow = Follow.find_or_create_by(follow_params)
    render json: @follow
  end

  def update
    @follow = Follow.find(params[:id])
    @follow.update(params)
    @follow.save
    render json: @follow
  end

  def destroy
    @follow = Follow.find(params[:id])
    @follow.destroy
  end

  def follow_params
  params.require(:character_setting).permit(:following_since, :user_id, :following_id)
  end
end
