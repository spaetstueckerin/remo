class AddTotalConsumptionToLevels < ActiveRecord::Migration
  def change
    add_column :levels, :total_consumption, :float
  end
end
