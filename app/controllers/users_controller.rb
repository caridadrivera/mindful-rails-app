class UsersController < ApplicationController
  before_action :this_user, only: [:index, :edit, :update]

  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params())
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def this_user
    @user = User.find(params[:id])
  end

  def user_params(*args)
    params.require(:user).permit(*args)
  end
end
