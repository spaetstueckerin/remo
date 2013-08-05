class AddFieldsToEnergyMix < ActiveRecord::Migration
  def change
    add_column :energy_mixes, :renewableEEG, :decimal
    add_column :energy_mixes, :renewableOther, :decimal
    add_column :energy_mixes, :brownCoal, :decimal
    add_column :energy_mixes, :nuclear, :decimal
    add_column :energy_mixes, :naturalGas, :decimal
    add_column :energy_mixes, :mineralOil, :decimal
    add_column :energy_mixes, :photovoltaics, :decimal
    add_column :energy_mixes, :waterPower, :decimal
    add_column :energy_mixes, :biomass, :decimal
    add_column :energy_mixes, :wind, :decimal
  end
end
