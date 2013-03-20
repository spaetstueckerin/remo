class CreateColdDistributionYears < ActiveRecord::Migration
  def change
    create_table :cold_distribution_years do |t|
      t.decimal :compression
      t.decimal :flowTemperature
      t.decimal :returnTemperature
      t.integer :coldConsumption_id
      t.integer :coldProduction_id
      t.integer :coldDistribution_id

      t.timestamps
    end
  end
end
