class AddbdtToBusinessData < ActiveRecord::Migration
  def up
    add_column :business_data, :bdt_id, :integer
  end

  def down
  end
end
