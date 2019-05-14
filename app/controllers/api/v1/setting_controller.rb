class SettingsController < ApplicationController
  def index
    @settings= Setting.all
    render json: @settings
  end

  def show
    @setting = Setting.find(params[:id])
    render json: @setting
  end

  def create
    @setting = Setting.find_or_create_by(params)
    render json: @setting
  end

  def update
    @setting = Setting.find(params[:id])
    @setting.update(params)
    @setting.save
    render json: @setting
  end

  def destroy
    @setting = Setting.find(params[:id])
    @setting.destroy
  end

end
