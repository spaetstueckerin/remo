class AddSteamProductionIdToSteamProductionYears < ActiveRecord::Migration
  def change
    add_column :steam_production_years, :steamProductionId, :integer
  end
end
