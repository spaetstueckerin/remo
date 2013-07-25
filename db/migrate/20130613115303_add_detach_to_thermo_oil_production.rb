class AddDetachToThermoOilProduction < ActiveRecord::Migration
  def change
    add_column :thermo_oil_productions, :detachablePart, :integer
    add_column :thermo_oil_productions, :detachDuration, :integer
    add_column :thermo_oil_productions, :detachTerm, :integer
  end
end
