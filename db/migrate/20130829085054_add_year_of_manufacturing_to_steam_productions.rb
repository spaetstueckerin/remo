class AddYearOfManufacturingToSteamProductions < ActiveRecord::Migration
  def change
    add_column :steam_productions, :yearOfManufaturing, :integer
  end
end
