class AddBuildingIdToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :building_id, :integer
  end
end
