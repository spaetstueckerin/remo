class AddUnitToSteamProduction < ActiveRecord::Migration
  def change
    add_column :hot_water_production_years, :fuelConsumptionUnit, :string
  end
end
