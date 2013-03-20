class HotWaterConsumptionYear < ActiveRecord::Base
  attr_accessible :flowTemperature, :hotWaterProduction_id, :machinery_id, :processTemperature, :returnTemperature, :volumeStream
end
