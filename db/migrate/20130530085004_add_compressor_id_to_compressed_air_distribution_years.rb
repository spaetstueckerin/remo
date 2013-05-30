class AddCompressorIdToCompressedAirDistributionYears < ActiveRecord::Migration
  def change
    add_column :compressed_air_distribution_years, :compressor_id, :integer
  end
end
