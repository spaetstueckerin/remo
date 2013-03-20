class HotWaterDemand < ActiveRecord::Base
  attr_accessible :demandDate, :hotWaterConsumption_id, :time_from, :time_to, :year_id
end
