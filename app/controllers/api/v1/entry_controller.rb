class EntriesController < ApplicationController

  def index
    @entries= Entry.all
    render json: @entries
  end

  def show
    @entry = Entry.find(params[:id])
    render json: @entry
  end

  def create
    @entry = Entry.find_or_create_by(params)
    render json: @entry
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(params)
    @entry.save
    render json: @entry
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
  end
end
