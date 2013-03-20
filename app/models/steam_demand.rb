class SteamDemand < ActiveRecord::Base
  attr_accessible :demandDate, :steamConsumption_id, :timeFrom, :timeTo, :year_id
end
