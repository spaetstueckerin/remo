class EnergyType < ActiveRecord::Base
  attr_accessible :energy_type

  ELECTRICITY = 1
  GAS = 2
  DIESEL = 3
  TELEHEATING = 4
  OIL = 5
end
