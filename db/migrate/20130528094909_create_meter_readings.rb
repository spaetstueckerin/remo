class CreateMeterReadings < ActiveRecord::Migration
  def change
    create_table :meter_readings do |t|
      t.integer :meter_id
      t.date :readingDate
      t.decimal :readingValue

      t.timestamps
    end
  end
end
