class AddEnterpriseIdToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :enterprise_id, :integer
  end
end
