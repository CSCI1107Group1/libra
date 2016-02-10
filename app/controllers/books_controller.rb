class BooksController < ApplicationController
  before_action :require_user, only: [:index, :show]
  def index
    @books = Book.all
  end
  def show
    @book = Book.find(params[:id])
  end
end
