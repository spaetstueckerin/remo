class CreateSteamProductionYears < ActiveRecord::Migration
  def change
    create_table :steam_production_years do |t|
      t.decimal :fuelConsumption
      t.decimal :kettleEnergyConsumption
      t.integer :operationHours
      t.decimal :kettleSteamParameterBar
      t.decimal :kettleSteamParameterCel
      t.decimal :steamAmount
      t.decimal :tempAdditionalWater
      t.decimal :tempCombustionAir
      t.decimal :tempExhaustBeforeWRG
      t.decimal :tempExhaustAfterWRG
      t.decimal :carbonDioxideExhaust
      t.string :yearId_integer

      t.timestamps
    end
  end
end
