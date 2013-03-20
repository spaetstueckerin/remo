class AddColumnToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :supplier, :string
  end
end
