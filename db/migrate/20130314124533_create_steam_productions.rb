class CreateSteamProductions < ActiveRecord::Migration
  def change
    create_table :steam_productions do |t|
      t.string :kettleName
      t.string :kettleManufaturer
      t.decimal :kettleCapacity
      t.decimal :kettleSaturatedSteam
      t.string :burnerType
      t.string :burnerManufacturer
      t.integer :burnerManufacturingYear
      t.decimal :districtHeatMin
      t.decimal :districtHeatMax
      t.string :fuelType
      t.decimal :fuelCapacity
      t.decimal :fuelValue
      t.string :fuelValueUnit
      t.string :exhaustHeatRecovery
      t.decimal :ventCondenser
      t.boolean :o2Control
      t.text :chimney

      t.timestamps
    end
  end
end
