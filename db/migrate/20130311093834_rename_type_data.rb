class RenameTypeData < ActiveRecord::Migration
  def up
    rename_column :business_data_types, :type, :bd_type
  end

  def down
  end
end