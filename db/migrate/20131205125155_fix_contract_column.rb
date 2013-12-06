class FixContractColumn < ActiveRecord::Migration
  def change
    rename_column :contracts, :energy_type, :energy_type_id
    change_column :contracts, :energy_type_id, :integer
  end
end
