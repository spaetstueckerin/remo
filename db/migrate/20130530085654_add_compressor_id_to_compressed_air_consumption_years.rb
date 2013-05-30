class AddCompressorIdToCompressedAirConsumptionYears < ActiveRecord::Migration
  def change
    add_column :compressed_air_consumption_years, :compressor_id, :integer
  end
end
