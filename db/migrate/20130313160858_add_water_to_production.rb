class AddWaterToProduction < ActiveRecord::Migration
  def change
    add_column :compressed_air_production_years, :amount_water, :decimal
  end
end