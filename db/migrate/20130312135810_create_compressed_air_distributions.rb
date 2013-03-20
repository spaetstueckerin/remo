class CreateCompressedAirDistributions < ActiveRecord::Migration
  def change
    create_table :compressed_air_distributions do |t|
      t.integer :compressor_id
      t.string :manufacturer
      t.integer :yearOfManufacturing
      t.decimal :capacity
      t.string :compressedAirDryerType
      t.string :addons
      t.decimal :volume
      t.integer :location_id
      t.integer :leak
      t.decimal :pressureLoss
      t.decimal :mainline
      t.decimal :stubline
      t.decimal :branchline
      t.decimal :mainlineL
      t.decimal :stublineL
      t.decimal :branchlineL
      t.string :material

      t.timestamps
    end
  end
end
