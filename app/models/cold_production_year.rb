class ColdProductionYear < ActiveRecord::Base
  attr_accessible :coldAmount, :coldProduction_id, :energyConsumption, :flowTemperature, :massFlow, :operatingHours, :returnTemperature, :temperatureIn, :temperatureOut, :waterRequirement
end
