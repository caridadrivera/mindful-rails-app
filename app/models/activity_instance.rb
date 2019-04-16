class ActivityInstance < ApplicationRecord
  belongs_to :day
  belongs_to :activity
  # belongs_to :user, through: :days
end
