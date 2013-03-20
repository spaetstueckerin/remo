class AddColumsToHotWaterProduction < ActiveRecord::Migration
  def change
    add_column :hot_water_productions, :kettleCapacityKw, :decimal
    add_column :hot_water_productions, :fuelValueUnit, :string
  end
end
