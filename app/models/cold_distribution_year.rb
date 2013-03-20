class ColdDistributionYear < ActiveRecord::Base
  attr_accessible :coldConsumption_id, :coldDistribution_id, :coldProduction_id, :compression, :flowTemperature, :returnTemperature
end
