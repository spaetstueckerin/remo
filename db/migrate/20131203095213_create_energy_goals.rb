class CreateEnergyGoals < ActiveRecord::Migration
  def change
    create_table :energy_goals do |t|
      t.string :name
      t.date :from_date
      t.date :to_date
      t.float :from_value, :default => 0
      t.float :to_value, :default => 0
      t.float :mean_value, :default => 0
      t.float :last_value, :default => 0
      t.integer :energy_type_id
      t.integer :concept_id
      t.float :value
      t.integer :measure_id
      t.integer :goal_id
      t.integer :checklist_id

      t.timestamps
    end
  end
end
