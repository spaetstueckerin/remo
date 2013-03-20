class CreateCompressedAirDistributionYears < ActiveRecord::Migration
  def change
    create_table :compressed_air_distribution_years do |t|
      t.integer :leak
      t.decimal :pressureLoss
      t.integer :year_id

      t.timestamps
    end
  end
end
