class CreateColdConsumptionYears < ActiveRecord::Migration
  def change
    create_table :cold_consumption_years do |t|
      t.decimal :volumeStream
      t.decimal :flowTemperature
      t.decimal :returnTemperature
      t.decimal :processTemperature
      t.integer :coldConsumption_id

      t.timestamps
    end
  end
end
