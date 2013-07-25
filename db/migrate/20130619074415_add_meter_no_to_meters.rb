class AddMeterNoToMeters < ActiveRecord::Migration
  def change
    add_column :meters, :meterNo, :integer
  end
end
