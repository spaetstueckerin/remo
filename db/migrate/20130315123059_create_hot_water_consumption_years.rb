class CreateHotWaterConsumptionYears < ActiveRecord::Migration
  def change
    create_table :hot_water_consumption_years do |t|
      t.integer :hotWaterProduction_id
      t.integer :machinery_id
      t.decimal :volumeStream
      t.decimal :flowTemperature
      t.decimal :returnTemperature
      t.decimal :processTemperature

      t.timestamps
    end
  end
end
