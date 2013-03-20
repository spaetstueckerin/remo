class HotWaterProduction < ActiveRecord::Base
  attr_accessible :burnerManuYear, :burnerManufacturer, :burnerType, :districtHeatMax, :districtHeatMin, :exhaustHeatRecovery, :fuelDenseness, :fuelType, :fuelValue, :kettleCapacity, :kettleManuYear, :kettleManufacturer, :kettleName, :kettleCapacityKw, :fuelValueUnit
end
