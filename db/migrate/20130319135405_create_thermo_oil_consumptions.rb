class CreateThermoOilConsumptions < ActiveRecord::Migration
  def change
    create_table :thermo_oil_consumptions do |t|
      t.integer :thermoOilProduction_id
      t.string :machinery_id
      t.decimal :profitCapacity
      t.string :requirementType
      t.integer :thermoOilDistribution_id

      t.timestamps
    end
  end
end
