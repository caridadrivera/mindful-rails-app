class AddDefaultValueToHappinessInDays < ActiveRecord::Migration[5.2]
  def change
    change_column :days, :happiness, :integer, :default => 0
  end
end
