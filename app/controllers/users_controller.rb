class UsersController < ApplicationController
  before_action :already_login?, only: [:new, :create]
  before_action :login?, only: :show
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:uid] = @user.uid
      redirect_to questions_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show
    
  end    

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
