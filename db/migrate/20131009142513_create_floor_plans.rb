class CreateFloorPlans < ActiveRecord::Migration
  def change
    create_table :floor_plans do |t|
      t.integer :building_id
      t.string :description
      t.text :sketch

      t.timestamps
    end
  end
end
