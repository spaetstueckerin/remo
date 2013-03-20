class CreateThermoOilProductionYears < ActiveRecord::Migration
  def change
    create_table :thermo_oil_production_years do |t|
      t.integer :thermoOilProduction_id
      t.decimal :fuelConsumption
      t.decimal :kettleEnergyConsumption
      t.integer :operatingHours
      t.decimal :kettleExitCompression
      t.decimal :kettleExitTemperature
      t.decimal :thermoOilAmount
      t.decimal :tempAdditionalWater
      t.decimal :tempCombustionAir
      t.decimal :tempExhaustBeforeWRG
      t.decimal :tempExhaustAfterWRG
      t.integer :carbonDioxideExhaust

      t.timestamps
    end
  end
end
