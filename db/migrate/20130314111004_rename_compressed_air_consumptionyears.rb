class RenameCompressedAirConsumptionyears < ActiveRecord::Migration
  def up
    rename_table :compressed_air_consumptionyears, :compressed_air_consumption_years
    rename_table :compressed_air_production_basics, :compressed_air_productions
  end

  def down
  end
end
