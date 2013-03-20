class CreateColdConsumptions < ActiveRecord::Migration
  def change
    create_table :cold_consumptions do |t|
      t.integer :machinery_id
      t.integer :coldProduction_id
      t.decimal :profitCapacity
      t.string :requirementType
      t.integer :coldDistribution_id

      t.timestamps
    end
  end
end
