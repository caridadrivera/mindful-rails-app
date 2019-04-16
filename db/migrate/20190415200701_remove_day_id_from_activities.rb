class RemoveDayIdFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :day_id
  end
end
