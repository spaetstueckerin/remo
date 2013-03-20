class CreateThermoOilConsumptionYears < ActiveRecord::Migration
  def change
    create_table :thermo_oil_consumption_years do |t|
      t.decimal :volumeStream
      t.decimal :flowTemperature
      t.decimal :returnTemperature
      t.decimal :processTemperature
      t.integer :thermoOilProduction_id
      t.integer :machinery_id
      t.string :thermoOilConsumption_id

      t.timestamps
    end
  end
end
