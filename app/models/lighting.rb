class Lighting < ActiveRecord::Base
  attr_accessible :bulbs, :controlGear, :groupSwitchable, :hoursOfOperation, :illuminationTechnique, :installedPower, :lampConfiguration, :lightControl, :location_id, :numberOfBulbs, :numberOfBulbsInLamp, :powerPerLamp, :string, :windowShadowing, :yearOfManufacturing, :detachablePart, :detachDuration, :detachTerm
end
