class AddDetachToLighting < ActiveRecord::Migration
  def change
    add_column :lightings, :detachablePart, :integer
    add_column :lightings, :detachDuration, :integer
    add_column :lightings, :detachTerm, :integer
  end
end
