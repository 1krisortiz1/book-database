class AuthorsController < ApplicationController

  def index
    @author = Author.all

  end
  
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    params.require(:author).permit(:name)
  end

end
