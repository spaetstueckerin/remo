class CreateColdDemands < ActiveRecord::Migration
  def change
    create_table :cold_demands do |t|
      t.time :timeFrom
      t.time :timeTo
      t.date :demandDate
      t.integer :coldConsumptionYear_id
      t.integer :machinery_id

      t.timestamps
    end
  end
end
