class DropEnergyData < ActiveRecord::Migration
  def up
    drop_table :energy_data
  end

  def down
  end
end
