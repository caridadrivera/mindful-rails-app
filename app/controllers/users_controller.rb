class UsersController < ApplicationController

  def home
    @user = User.find_or_create_by(user_params)

  end

  def index
    
  end

  def show

  end

  private

  def user_params

  end
end
