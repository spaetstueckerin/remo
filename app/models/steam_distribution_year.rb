class SteamDistributionYear < ActiveRecord::Base
  attr_accessible :dpCompression, :dpTemperature, :kpCompression, :kpReflux, :kpTemperature, :steamConsumer_id, :steamProduction_id
end
