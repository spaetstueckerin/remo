class CreateHotWaterDistributionYears < ActiveRecord::Migration
  def change
    create_table :hot_water_distribution_years do |t|
      t.decimal :compression
      t.decimal :flowTemperature
      t.decimal :returnTemperature
      t.integer :hotWaterProduction_id
      t.integer :hotWaterConsumption_id

      t.timestamps
    end
  end
end
