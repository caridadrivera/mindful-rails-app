class RenameFriendsIdToFriendIdInFriendships < ActiveRecord::Migration[5.2]
  def change
    rename_column :friendships, :friends_id, :friend_id
  end
end
