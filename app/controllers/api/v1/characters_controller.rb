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
    @character = Character.find_or_create_by(character_params)
    render json: @character
  end

  def update
    @character = Character.find(params[:id])
    @character.update(name: params[:name], description: params[:description])
    @character.save
    render json: @character
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
  end

  def character_params
  params.require(:character).permit(:name, :description, :entry_id)
  end
end
