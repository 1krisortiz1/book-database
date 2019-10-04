class ApplicationController < ActionController::Base

  private

  def current_reader
    @current_reader ||= Reader.find_by_id(session[:reader_id])
  end
end
