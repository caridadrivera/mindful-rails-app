class FriendshipsController < ApplicationController

  def new
    @users = User.all
    @friendship = Friendship.new
  end

  def create
    @friendship = Friendship.create(user_id: current_user.id, friend_id: params[:friend_id])
    redirect_to user_path(current_user)
  end

end
