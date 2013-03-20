class ColdDistribution < ActiveRecord::Base
  attr_accessible :aperture, :coldConsumer_id, :coldProduction_id, :isolation, :length, :volumeStreamMax, :volumeStreamMin, :volumeStreamNenn
end
