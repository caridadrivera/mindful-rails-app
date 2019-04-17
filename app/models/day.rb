class Day < ApplicationRecord
  belongs_to :user
  has_many :activity_instances
  has_many :activities, through: :activity_instances
end
