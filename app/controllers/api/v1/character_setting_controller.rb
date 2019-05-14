class CharacterSettingsController < ApplicationController

  def index
    @character_settings= CharacterSetting.all
    render json: @character_settings
  end

  def show
    @character_setting = CharacterSetting.find(params[:id])
    render json: @character_setting
  end

  def create
    @character_setting = CharacterSetting.find_or_create_by(params)
    render json: @character_setting
  end

  def update
    @character_setting = CharacterSetting.find(params[:id])
    @character_setting.update(params)
    @character_setting.save
    render json: @character_setting
  end

  def destroy
    @character_setting = CharacterSetting.find(params[:id])
    @character_setting.destroy
  end
end
