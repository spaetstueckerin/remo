class AddLocationToMachineries < ActiveRecord::Migration
  def change
    add_column :machineries, :location_id, :integer
  end
end
