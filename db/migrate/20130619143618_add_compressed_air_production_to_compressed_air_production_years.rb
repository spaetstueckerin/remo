class AddCompressedAirProductionToCompressedAirProductionYears < ActiveRecord::Migration
  def change
    add_column :compressed_air_production_years, :compressedAirProduction_id, :integer
  end
end
