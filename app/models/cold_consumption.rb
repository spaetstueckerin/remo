class ColdConsumption < ActiveRecord::Base
  attr_accessible :coldDistribution_id, :coldProduction_id, :machinery_id, :profitCapacity, :requirementType
end
