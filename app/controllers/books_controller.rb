class BooksController < ApplicationController

  def index
    @book = Book.all

  end

  def new
    @book = Book.new
    @book.build_author
  end

  def create
    @book = Book.new(book_params)
    @book.reader_id = session[:reader_id]
    if @book.save
      redirect_to book_path(@book)
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
    redirect_to books_path if !@book
  end

  private
    def book_params
      params.require(:book).permit(:title, :genre, :author_id, author_attributes: [:name])
    end



end
