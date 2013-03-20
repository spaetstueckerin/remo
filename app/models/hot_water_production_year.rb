class HotWaterProductionYear < ActiveRecord::Base
  attr_accessible :carbonDioxideExhaust, :fuelConsumption, :hotWaterProduction_id, :kettleEnergyConsumption, :kettleExitCompression, :kettleExitTemperature, :operationHours, :tempAdditionalWater, :tempCombustionAir, :tempExhaustAfterWRG, :tempExhaustBeforeWRG, :year_id, :fuelConsumptionUnit
end
