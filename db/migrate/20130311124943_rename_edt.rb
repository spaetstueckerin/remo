class RenameEdt < ActiveRecord::Migration
  def up
      rename_column :production_data, :edt_id, :pdt_id
  end

  def down
  end
end
