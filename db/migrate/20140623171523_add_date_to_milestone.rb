class AddDateToMilestone < ActiveRecord::Migration
  def change
    add_column :milestones, :date, :string
  end
end
