class AddFields2ToEnergyMix < ActiveRecord::Migration
  def change
    add_column :energy_mixes, :stoneCoal, :decimal
  end
end
