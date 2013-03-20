class AddEnterpriseIDtoContracts < ActiveRecord::Migration
  def up
    add_column :contracts, :enterprise_id, :integer
  end

  def down
  end
end
