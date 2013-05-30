class AddFloorToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :floor, :string
  end
end
