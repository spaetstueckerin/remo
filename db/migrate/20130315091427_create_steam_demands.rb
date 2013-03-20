class CreateSteamDemands < ActiveRecord::Migration
  def change
    create_table :steam_demands do |t|
      t.time :timeFrom
      t.time :timeTo
      t.integer :year_id
      t.integer :steamConsumption_id
      t.date :demandDate

      t.timestamps
    end
  end
end
