class CreateHotWaterDistributions < ActiveRecord::Migration
  def change
    create_table :hot_water_distributions do |t|
      t.integer :hotWaterProduction_id
      t.integer :hotWaterConsumption_id
      t.decimal :aperture
      t.decimal :isolation
      t.decimal :length
      t.decimal :volumeFlowNenn
      t.decimal :volumeFlowMin
      t.decimal :volumeFlowMax

      t.timestamps
    end
  end
end
