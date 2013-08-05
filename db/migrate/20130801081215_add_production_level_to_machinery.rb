class AddProductionLevelToMachinery < ActiveRecord::Migration
  def change
    add_column :machineries, :productionLevel, :integer
  end
end
