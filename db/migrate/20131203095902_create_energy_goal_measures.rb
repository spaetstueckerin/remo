class CreateEnergyGoalMeasures < ActiveRecord::Migration
  def change
    create_table :energy_goal_measures do |t|
      t.string :energy_goal_measure

      t.timestamps
    end
  end
end
