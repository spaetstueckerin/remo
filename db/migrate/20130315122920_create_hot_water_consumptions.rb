class CreateHotWaterConsumptions < ActiveRecord::Migration
  def change
    create_table :hot_water_consumptions do |t|
      t.integer :hotWaterProduction_id
      t.integer :machinery_id
      t.decimal :useCapacity
      t.string :requirementType

      t.timestamps
    end
  end
end
