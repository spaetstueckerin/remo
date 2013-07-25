class AddContractNoToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :contractNo, :integer
  end
end
