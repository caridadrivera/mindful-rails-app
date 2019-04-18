class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :current_user

    def current_user
      # User.find would throw an error if we cannot find the user
      User.find_by({id: session[:user_id]})
    end

    def logged_in?
      !!current_user
    end

    def authorized
      redirect_to '/' unless logged_in?
    end

    def logged_in
      if logged_in?
        redirect_to user_path(current_user)
      end
    end

end
