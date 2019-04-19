class AddColumnImgUrlToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :img_url, :string, :default => "https://www.extremetech.com/wp-content/uploads/2014/04/bliss-windows-xp-original-640x514.jpg"
  end
end
