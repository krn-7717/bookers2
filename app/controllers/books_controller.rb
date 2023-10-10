class BooksController < ApplicationController
  def new
  end

  def show
    @book = Book.new
    @book_dill = Book.find(params[:id])
    @user = @book_dill.user
  end

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def destroy
    book_dill = Book.find(params[:id])
    book_dill.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
