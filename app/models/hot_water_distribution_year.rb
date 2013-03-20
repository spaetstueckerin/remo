class HotWaterDistributionYear < ActiveRecord::Base
  attr_accessible :compression, :flowTemperature, :hotWaterConsumption_id, :hotWaterProduction_id, :returnTemperature, :hotWaterDistribution_id
end
