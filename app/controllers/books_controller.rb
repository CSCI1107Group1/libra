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

  def edit
    @book = Book.find(params[:id])
    redirect_to "/books" unless @book.user_id == current_user.id
  end

  def create

    if (current_user != nil) then
      #Get uploaded book
      book_tmp = params[:book][:book_pdf].tempfile.path
      #Generate book paths
      book_filename = generate_filename(params[:book][:book_pdf].original_filename)
      book_path = File.join("public/media/pdf", book_filename)
      book_link_path = File.join("/media/pdf", book_filename)
      #Move books
      FileUtils.mv book_tmp, book_path 
      FileUtils.chmod 0655, book_path

      #Get uploaded image
      image_tmp = params[:book][:image].tempfile
      #Generate image paths
      image_filename = generate_filename(params[:book][:image].original_filename)
      image_path = File.join("public/media/img", image_filename)
      image_link_path = File.join("/media/img", image_filename)
      #Move images
      FileUtils.mv image_tmp.path, image_path 
      FileUtils.chmod 0655, image_path
      
      @book = Book.new(book_params)
      @book.book_path = book_link_path
      @book.image_path = image_link_path
      @book.user_id = current_user.id


      if @book.save then
        redirect_to "/books"
      end
    end
  end

  def update

    @book = Book.find(params[:id])
    if (current_user.owner?(@book)) then

      if (params[:book][:image] != nil) then 
        tmp = params[:book][:image].tempfile
        name = params[:book][:image].original_filename

        path = File.join("public/media/img", name)
        link_path = File.join("/media/img", name)

        FileUtils.mv tmp.path, path 
        FileUtils.chmod 0655, path
        @book.update(image_path: link_path)
      end

      @book.update(title: params[:book][:title], genre: params[:book][:genre],
                   summary: params[:book][:summary], )

      if @book.save then
        redirect_to "/books/#{params[:id]}"
      end

    else
      redirect_to "/books" 
    end

  end

  private
  def book_params
    params.require(:book).permit(:title, :summary, :genre)
  end

  def generate_filename (original_name)
    file_extension = /\.(.*)/.match(original_name) 
    return "#{SecureRandom.urlsafe_base64}#{file_extension}"
  end
end
