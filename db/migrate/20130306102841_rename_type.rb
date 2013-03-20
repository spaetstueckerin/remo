class RenameType < ActiveRecord::Migration
  def up
    rename_column :contracts, :type, :energy_type
  end

  def down
  end
end
