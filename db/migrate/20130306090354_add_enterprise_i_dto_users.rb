class AddEnterpriseIDtoUsers < ActiveRecord::Migration
  def up
    add_column :users, :enterprise_id, :integer
  end

  def down
  end
end
