class AddCompressorToSpeedRegulation < ActiveRecord::Migration
  def change
    add_column :speed_regulations, :compressor_id, :integer
  end
end
