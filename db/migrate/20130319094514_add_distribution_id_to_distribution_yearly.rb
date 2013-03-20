class AddDistributionIdToDistributionYearly < ActiveRecord::Migration
  def change
    add_column :hot_water_distribution_years, :hotWaterDistribution_id, :integer
  end
end
