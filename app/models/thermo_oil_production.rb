class ThermoOilProduction < ActiveRecord::Base
  attr_accessible :burnerManuYear, :burnerManufacturer, :burnerType, :chimney, :districtHeatMax, :districtHeatMin, :exhaustHeatRecovery, :fuelDenseness, :fuelType, :fuelValue, :kettleCapacity, :kettleManuYear, :kettleManufacturer, :kettleName, :o2control, :thermoOilName, :detachablePart, :detachDuration, :detachTerm
end
