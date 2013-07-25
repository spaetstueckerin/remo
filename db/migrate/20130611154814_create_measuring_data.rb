class CreateMeasuringData < ActiveRecord::Migration
  def change
    create_table :measuring_data do |t|
      t.date :measuringDate
      t.time :measuringTime
      t.decimal :capacity

      t.timestamps
    end
  end
end
