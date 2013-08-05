class AddFields3ToEnergyMix < ActiveRecord::Migration
  def change
    add_column :energy_mixes, :other, :decimal
  end
end
