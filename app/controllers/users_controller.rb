class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def create 
    @user = User.new(user_params)
    redirect_to(@user.save ? root_path : new_user_path)
  end

  private

  def user_params 
    params.require(:user).permit(:email, :password)
  end
end
