class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.text :instruction
      t.integer :length
      t.integer :day_id

      t.timestamps
    end
  end
end
