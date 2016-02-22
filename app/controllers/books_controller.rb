class BooksController < ApplicationController
  before_action :require_user, only: [:index, :show]
  def index
    @books = Book.all
  end
  def show
    @book = Book.find(params[:id])
  end
  def new
  end
  def create

    tmp = params[:book][:image].tempfile
    name = params[:book][:image].original_filename
    directory = "/media/img"
    path = File.join(directory, name)
    FileUtils.mv tmp.path, directory
    
    @book = Book.new(book_params)
    @book.image_path = path
    @book.user_id = current_user.id
    if @book.save
      redirect_to '/books'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :summary, :genre)
  end
end
