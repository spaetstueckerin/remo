class CreateThermoOilDemands < ActiveRecord::Migration
  def change
    create_table :thermo_oil_demands do |t|
      t.time :timeFrom
      t.time :timeTo
      t.integer :machinery_id
      t.date :demandDate
      t.integer :year_id
      t.integer :thermoOilConsumptionYear_id

      t.timestamps
    end
  end
end
