class User < ApplicationRecord
  has_many :days
  has_many :friendships, class_name: "Friendship", foreign_key: "user_id"
  has_many :friends, through: :friendships
  has_many :activity_instances, through: :days
  has_many :activities, through: :activity_instances

  has_secure_password

  validates_uniqueness_of :email
  validates :email, presence: true
  validates :name, presence: true
  validates :password, presence: true
  validates :age, presence: true
  validates :about, presence: true

end
