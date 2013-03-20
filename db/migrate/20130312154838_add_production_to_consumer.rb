class AddProductionToConsumer < ActiveRecord::Migration
  def up
    add_column :compressed_air_consumers, :compressed_air_production_basic_id, :integer
  end

  def down
  end
end
