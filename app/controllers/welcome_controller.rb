class WelcomeController < ApplicationController

  def home

  end

  def new
  end

  def create
    @reader = Reader.find_by(username: params[:reader][:username])
    if @reader.try(:authenticate, params[:reader][:password])
      session[:reader_id] = @reader.id
      redirect_to reader_path(@reader)
    else
      flash[:error] = "Information incorrect, try again"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:reader_id)
    redirect_to '/'
  end

end