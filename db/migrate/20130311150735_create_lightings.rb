class CreateLightings < ActiveRecord::Migration
  def change
    create_table :lightings do |t|
      t.integer :location_id
      t.string :bulbs
      t.integer :yearOfManufacturing
      t.integer :numberOfBulbs
      t.integer :numberOfBulbsInLamp
      t.decimal :powerPerLamp
      t.decimal :installedPower
      t.string :controlGear
      t.string :lampConfiguration
      t.string :string
      t.integer :hoursOfOperation
      t.string :illuminationTechnique
      t.string :lightControl
      t.boolean :groupSwitchable
      t.boolean :windowShadowing

      t.timestamps
    end
  end
end
