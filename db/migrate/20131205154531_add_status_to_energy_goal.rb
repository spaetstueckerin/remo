class AddStatusToEnergyGoal < ActiveRecord::Migration
  def change
    add_column :energy_goals, :status, :boolean, :default => true
  end
end
