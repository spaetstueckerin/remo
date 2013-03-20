class CreateSteamConsumptions < ActiveRecord::Migration
  def change
    create_table :steam_consumptions do |t|
      t.integer :consumer_id
      t.integer :steamProduction_id
      t.string :system
      t.decimal :dpCompressionNeeded
      t.decimal :dpTemperatureNeeded
      t.decimal :massFlowNennNeeded
      t.decimal :massFlowMinNeeded
      t.decimal :massFlowMaxNeeded
      t.string :requirementType

      t.timestamps
    end
  end
end
