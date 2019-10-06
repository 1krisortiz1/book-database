class ReviewsController < ApplicationController

  def new
    @book = Book.find_by_id(params[:book_id])
    @review = @book.reviews.build
    
  end

  def index
    if @book = Book.find_by_id(params[:book_id])
      @reviews = @book.reviews 
    else
      @reviews = Review.all
    end
  end

  def create
    @review = current_reader.reviews.build(review_params)
    if @review.valid?
      @review.save
      redirect_to review_path(@review)
    else
      render :new
    end

  end

  def show
    @review = Review.find_by_id(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:stars, :title, :book_id, :content)
  end

end
