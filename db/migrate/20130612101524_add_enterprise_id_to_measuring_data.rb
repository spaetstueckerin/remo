class AddEnterpriseIdToMeasuringData < ActiveRecord::Migration
  def change
    add_column :measuring_data, :enterpriseID, :integer
    add_column :measuring_data, :mnumber, :integer
  end
end
