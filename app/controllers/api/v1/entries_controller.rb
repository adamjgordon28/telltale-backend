class Api::V1::EntriesController < ApplicationController
  

    def index
      @entry= Entry.all
      render json: @entry
    end

    def show
      @entry = Entry.find(params[:id])
      render json: @entry
    end

    def create

      entry = Entry.find_or_create_by(content: params[:content].to_s)
      render json: entry
    end

    def update
      @entry = Entry.find(params[:id])
      @entry.update(content: params[:content].to_s)
      @entry.save
      render json: @entry
    end

    def destroy
      @entry = Entry.find(entry_params[:id])
      @entry.destroy
    end


  end
