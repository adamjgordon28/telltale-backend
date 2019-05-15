class Api::V1::CharactersController < ApplicationController

  def index
    @characters= Character.all
    render json: @characters
  end

  def show
    @character = Character.find(params[:id])
    render json: @character
  end

  def create
    @character = Character.find_or_create_by(content: params[:content].to_s)
    render json: @character
  end

  def update
    @character = Character.find(params[:id])
    @character.update(params)
    @character.save
    render json: @character
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
  end
end
