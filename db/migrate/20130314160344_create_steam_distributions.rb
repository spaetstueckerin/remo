class CreateSteamDistributions < ActiveRecord::Migration
  def change
    create_table :steam_distributions do |t|
      t.integer :steamProduction_id
      t.integer :steamConsumer_id
      t.decimal :dpAperture
      t.decimal :dpIsolation
      t.decimal :dpLength
      t.decimal :massFlowNenn
      t.decimal :massFlowMin
      t.decimal :massFlowMax
      t.decimal :kpAperture
      t.decimal :kpIsolation
      t.decimal :kpLength
      t.string :drain

      t.timestamps
    end
  end
end
