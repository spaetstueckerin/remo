class DeleteFromProductionData < ActiveRecord::Migration
  def up
    remove_column :production_data, :pdt_id
    remove_column :production_data, :value
  end

  def down
  end
end
