class FixLocationColumns < ActiveRecord::Migration
  def change
    rename_column :locations, :building_id, :level_id
    remove_column :locations, :floor
    remove_column :locations, :enterprise_id
  end
end
