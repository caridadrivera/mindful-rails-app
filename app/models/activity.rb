class Activity < ApplicationRecord
  has_many :activity_instances
  has_many :days, through: :activity_instances
  has_many :users, through: :activity_instances
end
