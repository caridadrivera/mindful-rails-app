class UsersController < ApplicationController
  before_action :this_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def edit

  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy

  end

  private

  def this_user
    @user = User.find(params[:id])
  end

  def user_params()
    params.require(:user).permit(:email, :password, :name, :age, :about)
  end
end
