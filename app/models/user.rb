class User < ApplicationRecord
  has_many :days
  has_many :friendships, class_name: "Friendship", foreign_key: "friend_id"
  has_many :friends, through: :friendships
  has_many :activity_instances, through: :days
  has_many :activities, through: :activity_instances

  has_secure_password
  
  validates_uniqueness_of :email
  validates :password, presence: true

  def is_today
    self.days.find_by(date: Date.today) ? true:false
  end

  def today
    self.days.find_by(date: Date.today)
  end

end
