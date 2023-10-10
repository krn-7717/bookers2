class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end

  def edit
  end
end
