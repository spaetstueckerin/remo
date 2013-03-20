class CreateCompressedAirConsumers < ActiveRecord::Migration
  def change
    create_table :compressed_air_consumers do |t|
      t.integer :machinery_id
      t.integer :compressor_id
      t.decimal :neededPressureSettling
      t.string :neededQuality
      t.decimal :volumeStreamNom
      t.decimal :volumeStreamMin
      t.decimal :volumeStreamMax
      t.string :requirementType

      t.timestamps
    end
  end
end
