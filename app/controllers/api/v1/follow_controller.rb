class FollowsController < ApplicationController

  def index
    @follows= Follow.all
    render json: @follows
  end

  def show
    @follow = Follow.find(params[:id])
    render json: @follow
  end

  def create
    @follow = Follow.find_or_create_by(params)
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
end
