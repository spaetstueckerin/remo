class AddDemandDateToDemands < ActiveRecord::Migration
  def change
    add_column :compressed_air_demands, :demandDate, :date
  end
end
