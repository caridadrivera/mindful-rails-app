class ActivitiesController < ApplicationController
  before_action :this_activity, only: [:index, :edit, :update]

  def index
    @activities = Activity.all
  end

  def show

  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params())
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def this_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params(*args)
    params.require(:activity).permit(*args)
  end
end
