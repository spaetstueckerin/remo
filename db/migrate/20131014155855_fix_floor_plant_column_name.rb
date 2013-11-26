class FixFloorPlantColumnName < ActiveRecord::Migration
  def change
    rename_column :floor_plans, :building_id, :location_id
  end
end
