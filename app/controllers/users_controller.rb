class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = Book.where(:user_id => @user.id)
  end

  def new
    if current_user
      redirect_to '/books'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/books'
    end
  end

  def edit
    @user = User.find(params[:id])
    if (@user != current_user)
      redirect_to '/books'
    end
  end

  def update
    @user = User.find(params[:id])
    if (@user == current_user)
      @user.update(user_params)  
      redirect_to '/books'
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
