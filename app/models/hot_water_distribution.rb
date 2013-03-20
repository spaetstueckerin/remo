class HotWaterDistribution < ActiveRecord::Base
  attr_accessible :aperture, :hotWaterConsumption_id, :hotWaterProduction_id, :isolation, :length, :volumeFlowMax, :volumeFlowMin, :volumeFlowNenn
end
