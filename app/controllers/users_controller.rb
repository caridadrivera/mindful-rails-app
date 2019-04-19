class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :this_user, only: [:show, :edit, :update, :destroy, :user_history]

  def index
    @users = User.all
  end

  def show
    @today = current_user.today
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    # byebug
   if @user.valid?
     session[:user_id] = @user.id
    redirect_to @user
  else flash[:notice] = "You need to enter all info!"
    redirect_to new_user_path
    end
  end


  def edit

  end

  def update_day

  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'You deleted ur account.'
    redirect_to '/'
  end

  def user_history
    @day = params[:calendar]
    @calendar = Day.new
    render :user_history
  end

  def user_history_create
    session[:selected_date] = params[:day][:date]
    redirect_to activities_path
  end

  def happiness_show
    if current_user.today[:happiness] != 0
      "Happiness for today: #{current_user.today[:happiness]}"
    else
      "Input Happiness for today: "
    end
  end
  private

  def this_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :name, :age, :about)
  end
end
