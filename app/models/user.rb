class User < ApplicationRecord
  has_many :days
  has_many :friendships, class_name: "Friendship", foreign_key: "friend_id"
  has_many :friends, through: :friendships

       validates_uniqueness_of :email
end
