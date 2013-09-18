class AddSteamProductionIdToSteamProductions < ActiveRecord::Migration
  def change
    add_column :steam_productions, :steamProductionId, :integer
  end
end
