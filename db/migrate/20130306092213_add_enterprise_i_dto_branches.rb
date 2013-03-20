class AddEnterpriseIDtoBranches < ActiveRecord::Migration
  def up
    add_column :enterprises, :branch_id, :integer
  end

  def down
  end
end
