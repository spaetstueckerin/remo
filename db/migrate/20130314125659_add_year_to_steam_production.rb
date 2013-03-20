class AddYearToSteamProduction < ActiveRecord::Migration
  def change
    add_column :steam_productions, :kettleManuYear, :integer
  end
end
