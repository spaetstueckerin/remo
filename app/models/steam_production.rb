class SteamProduction < ActiveRecord::Base
  attr_accessible :burnerManufacturer, :burnerManufacturingYear, :kettleManuYear, :burnerType, :chimney, :districtHeatMax, :districtHeatMin, :exhaustHeatRecovery, :fuelCapacity, :fuelType, :fuelValue, :fuelValueUnit, :kettleCapacity, :kettleManufaturer, :kettleName, :kettleSaturatedSteam, :o2Control, :ventCondenser
end
