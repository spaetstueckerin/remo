class SteamProductionYear < ActiveRecord::Base
  attr_accessible :carbonDioxideExhaust, :fuelConsumption, :kettleEnergyConsumption, :kettleSteamParameterBar, :kettleSteamParameterCel, :operationHours, :steamAmount, :tempAdditionalWater, :tempCombustionAir, :tempExhaustAfterWRG, :tempExhaustBeforeWRG, :yearId_integer
end
