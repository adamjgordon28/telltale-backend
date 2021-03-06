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
      entry = Entry.find_or_create_by(entry_params)
      render json: entry, serializer: CustomEntrySerializer
    end

    def update
      entry = Entry.find(params[:id])
      entry.update(entry_params)
      entry.save
      render json: entry
    end

    def destroy
      @entry = Entry.find(params[:id])
      @entry.destroy
    end

    def entry_params
    params.require(:entry).permit(:title, :description, :content, :genre, :user_id, :published)
    end
  end
