class ColdConsumptionYear < ActiveRecord::Base
  attr_accessible :coldConsumption_id, :flowTemperature, :processTemperature, :returnTemperature, :volumeStream
end
