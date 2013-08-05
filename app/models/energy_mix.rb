class EnergyMix < ActiveRecord::Base
  attr_accessible :contractId, :energyType, :value, :renewableEEG, :photovoltaics, :waterPower, :biomass, :wind, :brownCoal, :stoneCoal, :nuclear, :naturalGas, :mineralOil, :other
end
