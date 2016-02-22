class BooksController < ApplicationController
  before_action :require_user, only: [:index, :show]

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    #Loads the view
  end

  def create

    tmp = params[:book][:image].tempfile
    name = params[:book][:image].original_filename

    path = File.join("public/media/img", name)
    link_path = File.join("/media/img", name)

    FileUtils.mv tmp.path, path 
    FileUtils.chmod 0655, path
    
    @book = Book.new(book_params)
    @book.image_path = link_path
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
