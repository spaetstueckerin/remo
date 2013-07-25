class AddDetachToColdProduction < ActiveRecord::Migration
  def change
    add_column :cold_productions, :detachablePart, :integer
    add_column :cold_productions, :detachDuration, :integer
    add_column :cold_productions, :detachTerm, :integer
  end
end
