class ColdProduction < ActiveRecord::Base
  attr_accessible :buildType, :capacity, :coolingCapacity, :coolingMedium, :manufacturer, :rkCapacity, :rkCoolingMedium, :rkWayOfCooling, :yearOfManufacturing, :detachablePart, :detachDuration, :detachTerm
end
