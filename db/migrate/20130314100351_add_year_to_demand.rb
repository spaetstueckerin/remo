class AddYearToDemand < ActiveRecord::Migration
  def change
    add_column :compressed_air_demands, :year_id, :integer
  end
end
