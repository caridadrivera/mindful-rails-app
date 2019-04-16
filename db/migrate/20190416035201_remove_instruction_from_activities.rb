class RemoveInstructionFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :instruction
  end
end
