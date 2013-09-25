class AddColumnsToProductionData < ActiveRecord::Migration
  def change
    add_column :production_data, :paperUsage, :integer
    add_column :production_data, :inkUsage, :integer
    add_column :production_data, :orders, :integer
    add_column :production_data, :utilities, :float
    add_column :production_data, :clients, :integer
  end
end
