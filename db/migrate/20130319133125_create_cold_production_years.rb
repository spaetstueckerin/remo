class CreateColdProductionYears < ActiveRecord::Migration
  def change
    create_table :cold_production_years do |t|
      t.integer :operatingHours
      t.decimal :energyConsumption
      t.decimal :coldAmount
      t.decimal :massFlow
      t.decimal :flowTemperature
      t.decimal :returnTemperature
      t.decimal :temperatureIn
      t.decimal :temperatureOut
      t.decimal :waterRequirement
      t.integer :coldProduction_id

      t.timestamps
    end
  end
end
