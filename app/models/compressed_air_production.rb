class CompressedAirProduction < ActiveRecord::Base
  attr_accessible :airFrom, :airWhere, :breakPressure, :capacity, :coolingMedium, :facilityCharacter, :heatApplicationArea, :heatRecovery, :higherControl, :loadCharacter, :location_id, :manufacturer, :nominalDeliveryRate, :pressureExhaust, :pressureSettling, :raisingPressure, :redundancyRequirements, :speedRegulation, :support, :version, :yearOfManufacturing, :compressed_air_production_id
  has_many :compressed_air_consumers
end
