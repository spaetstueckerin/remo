class CreateHotWaterProductions < ActiveRecord::Migration
  def change
    create_table :hot_water_productions do |t|
      t.string :kettleName
      t.string :kettleManufacturer
      t.integer :kettleManuYear
      t.decimal :kettleCapacity
      t.string :burnerType
      t.string :burnerManufacturer
      t.integer :burnerManuYear
      t.decimal :districtHeatMin
      t.decimal :districtHeatMax
      t.string :fuelType
      t.decimal :fuelDenseness
      t.decimal :fuelValue
      t.string :exhaustHeatRecovery

      t.timestamps
    end
  end
end
