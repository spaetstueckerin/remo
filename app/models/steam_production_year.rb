class SteamProductionYear < ActiveRecord::Base
  attr_accessible :carbonDioxideExhaust, :fuelConsumption, :kettleEnergyConsumption, :kettleSteamParameterBar, :kettleSteamParameterCel, :operationHours, :steamAmount, :tempAdditionalWater, :tempCombustionAir, :tempExhaustAfterWRG, :tempExhaustBeforeWRG, :year_id, :fuelConsumptionUnit, :steamProductionId
end
