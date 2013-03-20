class AddUnitToThermoOil < ActiveRecord::Migration
  def change
    add_column :thermo_oil_productions, :fuelValueUnit, :string
  end
end
