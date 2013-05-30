class AddHeightToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :height, :decimal
    add_column :locations, :building_id, :integer
  end
end
