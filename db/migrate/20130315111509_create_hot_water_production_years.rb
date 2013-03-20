class CreateHotWaterProductionYears < ActiveRecord::Migration
  def change
    create_table :hot_water_production_years do |t|
      t.integer :hotWaterProduction_id
      t.decimal :fuelConsumption
      t.decimal :kettleEnergyConsumption
      t.integer :operationHours
      t.decimal :kettleExitCompression
      t.decimal :kettleExitTemperature
      t.decimal :tempAdditionalWater
      t.decimal :tempCombustionAir
      t.decimal :tempExhaustBeforeWRG
      t.decimal :tempExhaustAfterWRG
      t.decimal :carbonDioxideExhaust
      t.integer :year_id

      t.timestamps
    end
  end
end
