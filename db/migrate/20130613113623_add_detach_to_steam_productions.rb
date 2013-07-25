class AddDetachToSteamProductions < ActiveRecord::Migration
  def change
    add_column :steam_productions, :detachablePart, :integer
    add_column :steam_productions, :detachDuration, :integer
    add_column :steam_productions, :detachTerm, :integer
  end
end
