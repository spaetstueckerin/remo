class ThermoOilDistribution < ActiveRecord::Base
  attr_accessible :aperture, :isolation, :length, :thermoOilConsumption_id, :thermoOilProduction_id, :volumeFlowMax, :volumeFlowMin, :volumeFlowNenn
end
