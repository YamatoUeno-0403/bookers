class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @books = Book.find(params[:id])
    
  end

  def new
   @book = Book.new
   
  end
  
  def create
    book = Book.new(book_params)
    book.save
    flash[:success] = "Book was successfully created."
    redirect_to book_path(book.id)
  end

  def edit
    @book = Book.find(params[:id])
    
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:success] = "Book was successfully updated."
    redirect_to book_path
  end
  
  def destroy
    @book = Book.find(params[:id])
    book.destroy
    flash[:success] ="Book was successfully destroyed."
    redirect_to books_path
  end
  
   private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
