class AddDetachToHotWaterProduction < ActiveRecord::Migration
  def change
    add_column :hot_water_productions, :detachablePart, :integer
    add_column :hot_water_productions, :detachDuration, :integer
    add_column :hot_water_productions, :detachTerm, :integer
  end
end
