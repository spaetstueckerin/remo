class AddYearToCapy < ActiveRecord::Migration
  def change
    add_column :compressed_air_production_years, :year_id, :integer
  end
end
