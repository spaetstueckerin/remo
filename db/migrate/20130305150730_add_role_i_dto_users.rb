class AddRoleIDtoUsers < ActiveRecord::Migration
  def up
    add_column :users, :role_id, :integer
  end

  def down
  end
end
