class CreateColdProductions < ActiveRecord::Migration
  def change
    create_table :cold_productions do |t|
      t.string :manufacturer
      t.string :buildType
      t.integer :yearOfManufacturing
      t.decimal :capacity
      t.decimal :coolingCapacity
      t.string :coolingMedium
      t.string :rkWayOfCooling
      t.string :rkCoolingMedium
      t.decimal :rkCapacity

      t.timestamps
    end
  end
end
