class AddNameToEnergyGoal < ActiveRecord::Migration
  def change
    add_column :energy_goals, :name, :string
  end
end
