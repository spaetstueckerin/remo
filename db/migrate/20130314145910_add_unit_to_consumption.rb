class AddUnitToConsumption < ActiveRecord::Migration
  def change
    add_column :steam_production_years, :fuelConsumptionUnit, :string
  end
end
