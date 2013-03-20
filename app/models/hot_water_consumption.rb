class HotWaterConsumption < ActiveRecord::Base
  attr_accessible :hotWaterProduction_id, :machinery_id, :requirementType, :useCapacity
end
