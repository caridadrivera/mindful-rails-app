class ActivityInstancesController < ApplicationController

  def index
    @days = Day.all
  end

  def create
    check_day
    added_activity = ActivityInstance.create(day_id: @today.id, activity_id: params[:activity_id])
    if added_activity.valid?
      flash[:message] = "Activity Added"
    end
    session[:selected_date] = nil
    redirect_to activities_path
  end

  def check_day
    if session[:selected_date]
      if selected_day = current_user.days.find_by(date: session[:selected_date])
        @today = selected_day
      else
        @today = Day.create(date: session[:selected_date], user_id: current_user.id)
      end
    elsif this_day = current_user.days.find_by(date: Date.today)
      @today = this_day
    else
      @today = Day.create(date: Date.today, user_id: current_user.id)
    end
  end

  def destroy
    @activity_instance = ActivityInstance.find_by(day_id: params[:day_id].to_i, activity_id: params[:activity_id].to_i)
    @activity_instance.destroy
    redirect_to "/users/#{current_user.id}/days/#{params[:day_id]}"
  end

end
