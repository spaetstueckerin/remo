class CreateThermoOilProductions < ActiveRecord::Migration
  def change
    create_table :thermo_oil_productions do |t|
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
      t.string :thermoOilName
      t.string :exhaustHeatRecovery
      t.decimal :o2control
      t.text :chimney

      t.timestamps
    end
  end
end
