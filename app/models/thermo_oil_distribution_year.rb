class ThermoOilDistributionYear < ActiveRecord::Base
  attr_accessible :compression, :flowTemperature, :returnTemperature, :thermoOilConsumption_id, :thermoOilDistribution_id, :thermoOilProduction_id
end
