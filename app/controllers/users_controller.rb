class UsersController < ApplicationController
  before_action :user_finder, only: [:show, :edit, :update]
  def user_finder
    @user = User.find(params[:id]);
  end

  def show
    @user
  end

  def edit
    @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #Handles proper save
      flash[:success]= "Welcome to Twistter!"
      redirect_to @user, notice: "Welcome to Twistter!"
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
