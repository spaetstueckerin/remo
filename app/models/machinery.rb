class Machinery < ActiveRecord::Base
  attr_accessible :description, :energyConsumption, :enterpriseID, :machineryTypeID, :name, :yearOfBuy, :yearOfConstruction, :capacity, :detachablePart, :detachDuration, :detachTerm, :location_id, :productionLevel, :photo
  has_attached_file :photo,
    :styles => {
      :thumb => "100x100",
      :small  => "250x250>",
      :show => "x200"
      }
end
