class ChangeTypeOfColumnDateFromStringToDate < ActiveRecord::Migration[5.2]
  def change
    change_column :days, :date, :date
  end
end
