class AddEmployeesToBusinessData < ActiveRecord::Migration
  def change
    add_column :business_data, :employees, :integer
  end
end
