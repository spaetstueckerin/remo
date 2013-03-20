class CompressedAirDemand < ActiveRecord::Base
  attr_accessible :timeFrom, :timeTo, :compressed_air_consumer_id, :demandDate
end
