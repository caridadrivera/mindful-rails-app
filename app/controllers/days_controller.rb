class DaysController < ApplicationController
  before_action :this_day, only: [:show, :edit, :update]

  def index
    @days = Day.all
    @users = User.all
  end

  def show
    @users = User.all
  end

  def new
    @day = Day.new
  end

  def create
    # byebug
    @day = Day.create(day_params)
    redirect_to day_path(@day)
  end

  def edit

  end

  def update
    @day.update(day_params)
    redirect_to @day
  end

  def destroy

  end

  private

  def this_day
    @day = Day.find(params[:id])
  end

  def day_params()
    params.require(:day).permit(:date, :user_id)
  end

end
