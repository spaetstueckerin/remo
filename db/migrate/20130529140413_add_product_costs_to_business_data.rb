class AddProductCostsToBusinessData < ActiveRecord::Migration
  def change
    add_column :business_data, :productCosts, :decimal
  end
end
