class Day < ApplicationRecord
  belongs_to :user
  has_many :activity_instances 
end
