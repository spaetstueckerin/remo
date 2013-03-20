class ThermoOilDemand < ActiveRecord::Base
  attr_accessible :demandDate, :machinery_id, :thermoOilConsumptionYear_id, :timeFrom, :timeTo, :year_id
end
