class AddCapacityToMachinery < ActiveRecord::Migration
  def change
    add_column :machineries, :capacity, :decimal
    add_column :machineries, :detachablePart, :integer
    add_column :machineries, :detachDuration, :integer
    add_column :machineries, :detachTerm, :integer
  end
end
