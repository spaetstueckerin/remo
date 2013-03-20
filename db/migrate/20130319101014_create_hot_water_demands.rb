class CreateHotWaterDemands < ActiveRecord::Migration
  def change
    create_table :hot_water_demands do |t|
      t.time :time_from
      t.time :time_to
      t.date :demandDate
      t.integer :hotWaterConsumption_id
      t.integer :year_id

      t.timestamps
    end
  end
end
