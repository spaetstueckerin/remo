class CreateWarningTables < ActiveRecord::Migration
  def change
    create_table :warning_tables do |t|
      t.string :system_table_name
      t.string :view_table_name

      t.timestamps
    end
  end
end
