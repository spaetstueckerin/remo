class ThermoOilConsumption < ActiveRecord::Base
  attr_accessible :machinery_id, :profitCapacity, :requirementType, :thermoOilDistribution_id, :thermoOilProduction_id
end
