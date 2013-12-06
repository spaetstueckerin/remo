class CreateEnergyGoalConcepts < ActiveRecord::Migration
  def change
    create_table :energy_goal_concepts do |t|
      t.string :energy_goal_concept

      t.timestamps
    end
  end
end
