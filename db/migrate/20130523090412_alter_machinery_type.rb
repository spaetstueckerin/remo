class AlterMachineryType < ActiveRecord::Migration
  def up
    rename_column :machinery_types, :type, :m_type
  end

  def down
  end
end
