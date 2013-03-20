class AddContractsIdToBills < ActiveRecord::Migration
  def change
    add_column :bills, :contract_id, :integer
  end
end
