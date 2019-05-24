class Api::V1::SettingsController < ApplicationController
  def index
    @settings= Setting.all
    render json: @settings
  end

  def show
    @setting = Setting.find(params[:id])
    render json: @setting
  end

  def create
    @setting = Setting.find_or_create_by(setting_params)
    render json: @setting
  end

  def update
    @setting = Setting.find(params[:id])
    @setting.update(name: params[:name], description: params[:description])
    @setting.save
    render json: @setting
  end

  def destroy
    @setting = Setting.find(params[:id])
    @setting.destroy
  end

  def setting_params
  params.require(:setting).permit(:name, :description, :entry_id)
  end

end
