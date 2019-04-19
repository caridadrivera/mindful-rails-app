class AddColumnImgUrlToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :img_url, :string, :default => "https://t4.ftcdn.net/jpg/00/64/67/27/240_F_64672736_U5kpdGs9keUll8CRQ3p3YaEv2M6qkVY5.jpg"
  end
end
