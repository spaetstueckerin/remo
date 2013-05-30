class DropTables < ActiveRecord::Migration
  def up
    drop_table :business_data_types
    drop_table :energy_data_types
    drop_table :enterprise_data_types
    drop_table :production_data_types
  end

  def down
  end
end
