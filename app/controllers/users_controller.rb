class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :this_user, only: [:show, :edit, :update, :destroy]

  def home

  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
   if @user.valid?
    redirect_to @user
  else flash[:notice] = "You need to enter all info!"
    redirect_to new_user_path
    end
  end


  def edit

  end


  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy # DELETE request /users/:id
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'You deleted ur account.'
    redirect_to new_user_path
  end

  private

  def this_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :name, :age, :about, :img_url)
  end
end
