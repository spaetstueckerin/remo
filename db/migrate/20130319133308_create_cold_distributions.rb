class CreateColdDistributions < ActiveRecord::Migration
  def change
    create_table :cold_distributions do |t|
      t.integer :coldProduction_id
      t.integer :coldConsumer_id
      t.decimal :aperture
      t.decimal :isolation
      t.decimal :length
      t.decimal :volumeStreamNenn
      t.decimal :volumeStreamMin
      t.decimal :volumeStreamMax

      t.timestamps
    end
  end
end
