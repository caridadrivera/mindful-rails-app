class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def is_today
    self.days.find_by(date: Date.today) ? true:false
  end

  def today
    self.days.find_by(date: Date.today)
  end

end
