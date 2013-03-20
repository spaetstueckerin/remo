class CreateThermoOilDistributions < ActiveRecord::Migration
  def change
    create_table :thermo_oil_distributions do |t|
      t.integer :thermoOilProduction_id
      t.integer :thermoOilConsumption_id
      t.decimal :aperture
      t.decimal :isolation
      t.decimal :length
      t.decimal :volumeFlowNenn
      t.decimal :volumeFlowMin
      t.decimal :volumeFlowMax

      t.timestamps
    end
  end
end
