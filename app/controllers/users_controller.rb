class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.home_city = params[:home_city]
    @user.home_state = params[:home_state]
    @user.home_country = params[:home_country]
    @user.email = params[:email]
    @user.user_name = params[:user_name]
    @user.password = params[:password]
    @user.photo_url = params[:photo_url]

    if @user.save
      redirect_to users_url, notice: "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.home_city = params[:home_city]
    @user.home_state = params[:home_state]
    @user.home_country = params[:home_country]
    @user.email = params[:email]
    @user.user_name = params[:user_name]
    @user.password = params[:password]
    @user.photo_url = params[:photo_url]

    if @user.save
      redirect_to users_url, notice: "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to users_url, notice: "User deleted."
  end
end
