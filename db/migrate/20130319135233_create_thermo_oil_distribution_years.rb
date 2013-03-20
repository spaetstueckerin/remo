class CreateThermoOilDistributionYears < ActiveRecord::Migration
  def change
    create_table :thermo_oil_distribution_years do |t|
      t.decimal :compression
      t.decimal :flowTemperature
      t.decimal :returnTemperature
      t.integer :thermoOilProduction_id
      t.integer :thermoOilConsumption_id
      t.integer :thermoOilDistribution_id

      t.timestamps
    end
  end
end
