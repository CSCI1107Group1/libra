class ClubsController < ApplicationController

  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
    @book = Book.find(@club.book_id)
  end

  def new

  end

  def join
    @club = Club.find(params[:id])
    current_user.club << @club
    redirect_to "/clubs/#{params[:id]}"
  end

  def leave
    @club = Club.find(params[:id])
    current_user.club.delete(@club)
    redirect_to "/clubs"
  end

  def edit
    @club = Club.find(params[:id])
    redirect_to "/clubs" unless current_user.club_owner?(@club)
  end

  def create

    @club = Club.new(club_params)
    @club.user_id = current_user.id
    if @club.save then
      redirect_to "/clubs"
    end
  end
  
  def update

    @club = Club.find(params[:id])

    if current_user.club_owner?(@club) then
      @club.update(club_params)
      redirect_to "/clubs"
    end
  end

  private
  def club_params
    params.require(:club).permit(:name, :description, :book_id)
  end
end
