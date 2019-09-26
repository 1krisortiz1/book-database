class ReadersController < ApplicationController

  def index

  end

  def new
    @reader = Reader.new
  end

  def create
    @reader = Reader.new(reader_params)
    if @reader.save
      session[:reader_id] = @reader.id
      redirect_to reader_path(@reader)
    else
      render :new
    end
  end

  def show
    @reader = Reader.find_by_id(params[:id])
  end

  private

  def reader_params
    params.require(:reader).permit(:username, :password)
  end
end
