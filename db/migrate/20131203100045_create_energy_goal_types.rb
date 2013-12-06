class CreateEnergyGoalTypes < ActiveRecord::Migration
  def change
    create_table :energy_goal_types do |t|
      t.string :energy_goal_type

      t.timestamps
    end
  end
end
