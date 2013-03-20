class CreateCompressedAirProductionBasics < ActiveRecord::Migration
  def change
    create_table :compressed_air_production_basics do |t|
      t.string :manufacturer
      t.string :version
      t.integer :yearOfManufacturing
      t.decimal :capacity
      t.decimal :nominalDeliveryRate
      t.decimal :pressureSettling
      t.decimal :raisingPressure
      t.decimal :breakPressure
      t.string :loadCharacter
      t.string :facilityCharacter
      t.integer :location_id
      t.boolean :speedRegulation
      t.boolean :higherControl
      t.text :support
      t.boolean :redundancyRequirements
      t.text :pressureExhaust
      t.string :coolingMedium
      t.string :airFrom
      t.string :airWhere
      t.boolean :heatRecovery
      t.string :heatApplicationArea

      t.timestamps
    end
  end
end
