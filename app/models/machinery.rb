class Machinery < ActiveRecord::Base
  attr_accessible :description, :energyConsumption, :enterpriseID, :machineryTypeID, :name, :yearOfBuy, :yearOfConstruction, :capacity, :detachablePart, :detachDuration, :detachTerm, :location_id
end
