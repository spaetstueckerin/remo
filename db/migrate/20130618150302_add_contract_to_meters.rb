class AddContractToMeters < ActiveRecord::Migration
  def change
    add_column :meters, :contract_id, :integer
  end
end
