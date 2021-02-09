class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.save(user_params)
    redirect_to book_path(book)
  end

  def show
    user = User.find(params[:id])
    @books = user.books
  end

  def index
    @users = Users.all
  end


  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
