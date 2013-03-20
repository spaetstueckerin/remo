class SteamDistribution < ActiveRecord::Base
  attr_accessible :dpAperture, :dpIsolation, :dpLength, :drain, :kpAperture, :kpIsolation, :kpLength, :massFlowMax, :massFlowMin, :massFlowNenn, :steamConsumer_id, :steamProduction_id
end
