class CreateCompressedAirProductionYears < ActiveRecord::Migration
  def change
    create_table :compressed_air_production_years do |t|
      t.integer :operatingHours
      t.integer :loadHours
      t.integer :capacity
      t.decimal :energyConsumption
      t.decimal :deliveryRate
      t.integer :operatingCycles
      t.integer :overtravelTimeIdle
      t.decimal :pressureMin
      t.decimal :pressureExhaustTempMin
      t.decimal :pressureExhaustTempMax
      t.decimal :advanceTemp
      t.decimal :returnTemp

      t.timestamps
    end
  end
end
