class FixLevelColumnName < ActiveRecord::Migration
  def change
    rename_column :levels, :floor_plant, :floor_plan
  end
end
