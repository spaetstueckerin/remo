class AddMaxCapacityToBusinessData < ActiveRecord::Migration
  def change
    add_column :business_data, :maxCapacity, :decimal
  end
end
