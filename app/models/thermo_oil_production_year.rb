class ThermoOilProductionYear < ActiveRecord::Base
  attr_accessible :carbonDioxideExhaust, :fuelConsumption, :kettleEnergyConsumption, :kettleExitCompression, :kettleExitTemperature, :operatingHours, :tempAdditionalWater, :tempCombustionAir, :tempExhaustAfterWRG, :tempExhaustBeforeWRG, :thermoOilAmount, :thermoOilProduction_id
end
