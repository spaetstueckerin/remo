class AddEnergyMeasureToEnergyType < ActiveRecord::Migration
  def change
    add_column :energy_types, :energy_measure, :string
  end
end
