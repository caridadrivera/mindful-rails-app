
  class SessionsController < ApplicationController
    # before_action :authorized comes from ApplicationController
    skip_before_action :authorized, only: [:new, :create, :index]
    before_action :logged_in, only: [:index]

    def new
      render :new
    end

    def create #handles the POST request to /login
      # find out if we have a user with this username
      @user = User.find_by(email: params[:email])
      # get that user record from DB
      # authenticate this user; determine if they provided the correct pw
      if @user && @user.authenticate(params[:password])

        # once we have found the user, create a new session for them
        session[:user_id] = @user.id
        # redirect_to user_path(@user)
        redirect_to @user
      else
        flash[:notice] = 'Enter a valid email and password'
        redirect_to '/'
      end
    end


    def destroy
      session[:user_id] = nil
      redirect_to login_path
    end
  end
