class DaysController < ApplicationController
  before_action :this_day, only: [:show, :edit, :update]

  def index
    @days = Day.all

  end

  def show
    @User = User.all
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.create(day_params(:date))
    redirect_to day_path(@day)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def this_day
    @day = Day.find(params[:id])
  end

  def day_params(*args)
    params.require(:day).permit(*args)
  end

end
