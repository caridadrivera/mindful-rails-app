class ActivitiesController < ApplicationController
  before_action :this_activity, only: [:show, :edit, :update]

  def index
    @activities = Activity.all
  end

  def show

  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)
    redirect_to activities_path
  end

  def create_activity_instance
    check_today
    added_activity = ActivityInstance.create(day_id: @today.id, activity_id: flash[:activity_id])
    if added_activity.valid?
      flash[:message] = "Activity Added"
    end
    redirect_to activities_path
  end

  def check_today
    if this_day = current_user.days.find_by(date: Date.today)
      @today = this_day
    else
      @today = Day.create(date: Date.today, user_id: current_user.id)
    end
  end


  def edit

  end

  def update
    @activity.update(activity_params)
    redirect_to @activity
  end

  def destroy

  end

  private

  def this_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params()
    params.require(:activity).permit(:name, :description, :length)
  end
end
