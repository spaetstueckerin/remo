class CreateSteamDistributionYears < ActiveRecord::Migration
  def change
    create_table :steam_distribution_years do |t|
      t.integer :steamProduction_id
      t.integer :steamConsumer_id
      t.decimal :dpCompression
      t.decimal :dpTemperature
      t.decimal :kpCompression
      t.decimal :kpTemperature
      t.decimal :kpReflux

      t.timestamps
    end
  end
end
