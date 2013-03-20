class ThermoOilConsumptionYear < ActiveRecord::Base
  attr_accessible :flowTemperature, :machinery_id, :processTemperature, :returnTemperature, :thermoOilConsumption_id, :thermoOilProduction_id, :volumeStream
end
