class DeleteCapb < ActiveRecord::Migration
  def up
    remove_column :compressed_air_consumers, :compressed_air_production_basic
  end

  def down
  end
end
