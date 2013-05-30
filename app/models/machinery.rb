class Machinery < ActiveRecord::Base
  attr_accessible :description, :energyConsumption, :enterpriseID, :machineryTypeID, :name, :yearOfBuy, :yearOfConstruction
end
