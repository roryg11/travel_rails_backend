class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render json: @entries
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      render json: @entry
    else
      render json: {status: "there was an error in saving the entry"}
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    render json: {status: "successfully deleted"}
  end

  private
  def entry_params
    params.require(:entry).permit(:title, :image, :description)
  end
end
