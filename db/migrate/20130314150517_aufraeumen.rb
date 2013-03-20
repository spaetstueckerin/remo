class Aufraeumen < ActiveRecord::Migration
  def change
    remove_column :steam_production_years, :yearId_integer
    add_column :steam_production_years, :year_id, :integer
  end

  def down
  end
end
