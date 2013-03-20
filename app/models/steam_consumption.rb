class SteamConsumption < ActiveRecord::Base
  attr_accessible :consumer_id, :dpCompressionNeeded, :dpTemperatureNeeded, :massFlowMaxNeeded, :massFlowMinNeeded, :massFlowNennNeeded, :requirementType, :steamProduction_id, :system
end
