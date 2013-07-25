class CompressedAirProductionYear < ActiveRecord::Base
  attr_accessible :advanceTemp, :capacity, :deliveryRate, :energyConsumption, :loadHours, :operatingCycles, :operatingHours, :overtravelTimeIdle, :pressureExhaustTempMax, :pressureExhaustTempMin, :pressureMin, :returnTemp, :year_id, :amount_water, :compressedAirProduction_id
end
