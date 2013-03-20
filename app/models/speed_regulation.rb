class SpeedRegulation < ActiveRecord::Base
  attr_accessible :deliveryRate10, :deliveryRate20, :deliveryRate30, :deliveryRate40, :deliveryRate50, :deliveryRate60, :deliveryRate70, :deliveryRate80, :deliveryRate90, :year_id, :compressor_id
end
