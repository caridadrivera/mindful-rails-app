class DaysController < ApplicationController
  before_action :this_day, only: [:show, :edit]

  def index
    @days = Day.all
    @users = User.all
  end

  def show
    @day = Day.find(params[:day_id])
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.create(day_params)
    redirect_to day_path(@day)
  end

  def edit

  end

  def update
    @today = current_user.today
    @today.update(happiness: params[:day][:happiness].to_i)
    redirect_to user_path(current_user)
  end

  def destroy

  end

  private

  def this_day
    @day = Day.find(params[:day_id])
  end

  def day_params()
    params.require(:day).permit(:date, :user_id)
  end

end
